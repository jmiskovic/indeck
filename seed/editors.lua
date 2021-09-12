-- editor is a floating pane of editable code that accepts keyboard input
local m
m = {}  -- this table stores functions under keys and also all editors in a list

m.__index = m
m.active = nil  -- the one editor which receives text input
local buffer = require'buffer'
local panes = require'pane'

local keymapping = {
  buffer = {
    ['up']                  = 'moveUp',
    ['down']                = 'moveDown',
    ['volume_down']         = 'moveLeft',
    ['volume_up']           = 'moveRight',
    ['left']                = 'moveLeft',
    ['ctrl+up']              = 'moveJumpUp',
    ['ctrl+down']            = 'moveJumpDown',
    ['ctrl+left']           = 'moveJumpLeft',
    ['ctrl+right']          = 'moveJumpRight',
    ['right']               = 'moveRight',
    ['home']                = 'moveHome',
    ['end']                 = 'moveEnd',
    ['pageup']              = 'movePageUp',
    ['pagedown']            = 'movePageDown',
    ['ctrl+home']           = 'moveJumpHome',
    ['ctrl+end']            = 'moveJumpEnd',

    ['shift+up']            = 'selectUp',
    ['alt+shift+up']        = 'selectJumpUp',
    ['shift+down']          = 'selectDown',
    ['alt+shift+down']      = 'selectJumpDown',
    ['shift+left']          = 'selectLeft',
    ['ctrl+shift+left']     = 'selectJumpLeft',
    ['ctrl+shift+right']    = 'selectJumpRight',
    ['shift+right']         = 'selectRight',
    ['shift+home']          = 'selectHome',
    ['shift+end']           = 'selectEnd',
    ['shift+pageup']        = 'selectPageUp',
    ['shift+pagedown']      = 'selectPageDown',

    ['tab']                 = 'insertTab',
    ['return']              = 'breakLine',
    ['enter']               = 'breakLine',
    ['delete']              = 'deleteRight',
    ['backspace']           = 'deleteLeft',
    ['ctrl+backspace']      = 'deleteWord',
    ['ctrl+x']              = 'cutText',
    ['ctrl+c']              = 'copyText',
    ['ctrl+v']              = 'pasteText',
  },
  macros = {
    ['ctrl+o']               = function(self) self:listFiles() end,
    ['ctrl+s']               = function(self) self:saveFile(self.path) end,
    ['ctrl+h']               = function(self) m.new(1, 1):listFiles('lovr-api') end,
    ['f5']                   = function(self) lovr.event.push('restart') end,
    ['f10']                  = function(self) self:setFullscreen(not self.fullscreen) end,
    ['ctrl+shift+enter']     = function(self) self:execLine() end,
    ['ctrl+shift+return']    = function(self) self:execLine() end,
    ['alt+l']                = function(self) self.buffer:insertString('lovr.graphics.') end,
    ['ctrl+shift+home']      = function(self) self.pane:center() end,
    ['ctrl+shift+p']         = function(self) m.profile() end,
  },
}


local highlighting =
{ -- taken from base16-woodland
  background   = 0x231e18, --editor background
  cursorline   = 0x433b2f, --cursor background
  caret        = 0xc6bcb1, --cursor
  whitespace   = 0x111111, --spaces, newlines, tabs, and carriage returns
  comment      = 0x9d8b70, --either multi-line or single-line comments
  string_start = 0x9d8b70, --starts and ends of a string. There will be no non-string tokens between these two.
  string_end   = 0x9d8b70,
  string       = 0xb7ba53, --part of a string that isn't an escape
  escape       = 0x6eb958, --a string escape, like \n, only found inside strings
  keyword      = 0xb690e2, --keywords. Like "while", "end", "do", etc
  value        = 0xca7f32, --special values. Only true, false, and nil
  ident        = 0xd35c5c, --identifier. Variables, function names, etc
  number       = 0xca7f32, --numbers, including both base 10 (and scientific notation) and hexadecimal
  symbol       = 0xc6bcb1, --symbols, like brackets, parenthesis, ., .., etc
  vararg       = 0xca7f32, --...
  operator     = 0xcabcb1, --operators, like +, -, %, =, ==, >=, <=, ~=, etc
  label_start  = 0x9d8b70, --the starts and ends of labels. Always equal to '::'. Between them there can only be whitespace and label tokens.
  label_end    = 0x9d8b70,
  label        = 0xc6bcb1, --basically an ident between a label_start and label_end.
  unidentified = 0xd35c5c, --anything that isn't one of the above tokens. Consider them errors. Invalid escapes are also unidentified.
  selection    = 0x353937,
}


function m.new(width, height)
  local self = setmetatable({}, m)
  self.path = ''
  self.pane = panes.new(width, height)
  self.cols = math.floor(width  * self.pane.canvasSize / self.pane.fontWidth)
  self.rows = math.floor(height * self.pane.canvasSize / self.pane.fontHeight) - 1
  self.buffer = buffer.new(self.cols, self.rows,
    function(text, col, row, tokenType) -- draw single token
      local color = highlighting[tokenType] or 0xFFFFFF
      -- in-editor preview of colors in hex format 0xRRGGBBAA
      if tokenType == 'number' and text:match('0x%x+') then
        lovr.graphics.setColor(tonumber(text))
        self.pane:drawTextRectangle(col, row, 1)
      end
      lovr.graphics.setColor(color)
      self.pane:drawText(text, col, row)
    end,
    function (col, row, width, tokenType) --draw rectangle
      local color = highlighting[tokenType] or 0xFFFFFF
      lovr.graphics.setColor(color)
      self.pane:drawTextRectangle(col, row, width)
    end)
  self.pane:center()
  table.insert(m, self)
  m.active = self
  return self
end


function m:close()
  for i,editor in ipairs(m) do
    if self == editor then
      table.remove(m, i)
      return
    end
  end
end


function m:openFile(filename_line)
  -- file path can optionally include line number to jump to, like 'main.lua:50'
  local filename, linenumber = filename_line:match('([^:]+):([%d]+)')
  filename = filename or filename_line
  linenumber = linenumber or 1
  if not lovr.filesystem.isFile(filename) then
    return false, "no such file"
  end
  local content = lovr.filesystem.read(filename)
  print('file open', filename, 'size', #content)
  self.buffer:setText(content)
  local coreFile = lovr.filesystem.getRealDirectory(filename) == lovr.filesystem.getSource()
  self.buffer:setName((coreFile and 'core! ' or '').. filename)
  self.path = filename
  self.buffer:jumpToLine(linenumber)
  self:refresh()
end


function m:listFiles(path)
  if not path then -- try to use directory path of currently open file
    path = m.active and m.active.path:sub(1, (m.active.path:find('/[^/]+$') or 1) - 1) or ''
  end
  self.buffer:setText('')
  self.buffer:setName('FILES')
  self.path = ''
  --determine parent dir
  local previous = ''
  local parent = ''
  for subpath in path:gmatch('[^/]+/') do
    previous = subpath
    parent = parent .. previous
  end
  parent = parent:sub(1, #parent - 1)
  self.buffer:insertString(string.format('self:listFiles(\'%s\')\n', parent))
  --list directory items, first subdirectories then files
  local files = {}
  for _,filename in ipairs(lovr.filesystem.getDirectoryItems(path)) do
    local fullpath = path .. '/' .. filename
    if lovr.filesystem.isDirectory(fullpath) then
      self.buffer:insertString(string.format('self:listFiles(\'%s\')\n', fullpath))
    else
      table.insert(files, fullpath)
    end
  end
  for _, fullpath in ipairs(files) do
    self.buffer:insertString(string.format('self:openFile(\'%s\')\n', fullpath))
  end
  self.buffer:insertString('\nctrl+shift+enter   confirm selection')
  self.buffer:moveUp()  self.buffer:moveUp()
  self:refresh()
end


function m:saveFile(filename)
  local bytes
  filename = filename or self.path
  bytes = lovr.filesystem.write(filename, self.buffer:getText())
  self.path = filename
  self.buffer:setName(filename)
  print('file save', filename, 'size', bytes)
  return bytes
end


function m.storeSession(name)
  local bytes
  local scriptList = {}
  table.insert(scriptList, 'return {')
  for _, editor in ipairs(m) do
    if editor.path then
      table.insert(scriptList, ' {')
      table.insert(scriptList,  string.format("  path = '%s:%d',", tostring(editor.path), editor.buffer.cursor.y))
      table.insert(scriptList,  string.format('  pose = {%s}', table.concat({editor.pane.transform:unpack()}, ', ')))
      table.insert(scriptList, ' },\n')
    end
  end
  table.insert(scriptList, '}\n')
  local content = table.concat(scriptList, '\n')
  bytes = lovr.filesystem.write(name .. '.lua', content)
end


function m.restoreSession(name)
  for _, editor in ipairs(m) do
    editor:close() -- discarding potentially unsaved changes!
  end
  package.loaded[name] = nil
  local ok, session = pcall(require, name)
  if ok then
    for i, e in ipairs(session) do
      local editor
      editor = m.new(1, 1)
      editor:openFile(e.path)
      editor.pane.transform:set(unpack(e.pose))
    end
  else
    print(session)
  end
end


function m:draw()
  if not self.fullscreen then
    self.pane:draw(self == m.active)
  else
    lovr.graphics.clear(highlighting.background)
    lovr.graphics.push()
    lovr.graphics.translate(-50,100,-100)
    lovr.graphics.scale(0.1)
    self.buffer:drawCode()
    lovr.graphics.pop()
  end
end


function m:refresh()
  if not self.fullscreen then
    self.pane:drawCanvas(function()
      lovr.graphics.clear(highlighting.background)
      self.buffer:drawCode()
    end)
  end
end


function m:setFullscreen(isFullscreen)
  self.fullscreen = isFullscreen
  if self.fullscreen then
    --lovr.graphics.setDepthTest('gequal', false)
    self.buffer.cols = 100
    self.buffer.rows = 100
  else
    --lovr.graphics.setDepthTest('lequal', true)
    self.buffer.cols, self.buffer.rows = self.cols, self.rows
    self.buffer:updateView()
  end
end


-- key handling
function m.keypressed(k)
  if m.active then
    -- execute buffer-mapped action for keypress
    if keymapping.buffer[k] then
      m.active.buffer[keymapping.buffer[k]](m.active.buffer)
    end
    -- execute macros
    if keymapping.macros[k] then
      print('executing macro for', k)
      keymapping.macros[k](m.active)
    end
    m.active:refresh()
  end
  if k == 'ctrl+p' then           -- spawn new editor
    m.active = m.new(1, 1)
    m.active:listFiles()
  elseif k == 'ctrl+tab' then     -- select next editor
    local lastEditor = m[#m]
    for i, editor in ipairs(m) do
      if editor == m.active then break end
      lastEditor = editor
    end
    m.active = lastEditor
  elseif k == 'ctrl+w' then       -- close current editor
    local lastEditor
    for i, editor in ipairs(m) do
      if editor == m.active then
        table.remove(m, i)
      else
        lastEditor = editor
      end
    end
    m.active = lastEditor
  elseif k == 'ctrl+shift+s' then -- store session
    m.storeSession('saved-session')
  elseif k == 'ctrl+shift+l' then -- store session
    m.restoreSession('saved-session')
  end
end


function m.textinput(k)
  if m.active then
    m.active.buffer:insertCharacter(k)
    m.active:refresh()
  end
end

function m.profile()
  local profiler = require('profiler')
  profiler.start('p=-s')
  local editor = m.new(0.5, 0.8)
  editor.buffer:setName('performance')
  editor.buffer:setText(' Profiling the execution \n')
  local drawTime, drawStats
  local t = lovr.timer.getTime()
  while lovr.timer.getTime() < t + 1 do
    lovr.graphics.tick('profile')
    -- execute the reduced LOVR main loop
    local dt = lovr.timer.step()
    lovr.headset.update(dt)
    lovr.audio.update()
    lovr.update(dt)
    lovr.graphics.origin()
    lovr.headset.renderTo(lovr.draw)
    drawStats = lovr.graphics.getStats()  -- stats are cleared on start of frame
    lovr.mirror()
    lovr.graphics.present()
    lovr.math.drain()
    -- end of LOVR main loop
    drawTime = lovr.graphics.tock('profile')
  end
  local report = profiler.stop()
  editor.buffer:setText('')
  editor.buffer:insertString('-- LOVR statistics --\n')
  for stat, value in pairs(drawStats) do
    editor.buffer:insertString(string.format('%s: %d\n', stat, value))
  end
  m.active.buffer:insertString(string.format('averagedelta: %2.1f ms\n', lovr.timer.getAverageDelta() * 1000))
  m.active.buffer:insertString(string.format('drawingtime:  %2.1f ms\n', drawTime * 1000))
  editor.buffer:insertString(string.format('framespersecond: %d\n', lovr.timer.getFPS()))
  editor.buffer:insertString('-- LOVR graphics features --\n')
  for k, v in pairs(lovr.graphics.getFeatures()) do
    editor.buffer:insertString(k .. ': ' .. tostring(v) .. '\n')
  end
  editor.buffer:insertString(string.format('\n-- LuaJIT profiler report --\n'))
  editor.buffer:insertString(report)
  editor.buffer:moveJumpEnd()
  profiler = nil
end

-- code execution environment

function m:execLine()
  local line = self.buffer:getCursorLine()
  local lineNum = self.buffer.cursor.y
  local commentPos = line:find("%s+%-%-")
  if commentPos then
    line = line:sub(1, commentPos - 1)
  end
  local success, result = self:execUnsafely(line)
  self.buffer.statusLine = (success and 'ok' or 'fail') .. ' > ' .. (result or "")
end


function m:execUnsafely(code)
  local userCode, err = loadstring(code)
  local result = ""
  if not userCode then
    print('code error:', err)
    return false, err
  end
  -- set up current scope environment for user code execution
  local environment = {self=self, print=print, require=require, lovr=lovr}
  setfenv(userCode, environment)
  -- timber!
  return pcall(userCode)
end

return m
