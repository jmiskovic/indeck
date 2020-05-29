local m = {} -- floating pane of editable code
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
    ['alt+up']              = 'moveJumpUp',
    ['alt+down']            = 'moveJumpDown',
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
    ['ctrl+shift+backspace'] = function(self) self.buffer:setText("") end,
    ['ctrl+shift+o']         = function(self) self:openFile("playground.lua") end,
    ['ctrl+s']               = function(self) self:saveFile(self.path) end,
    ['ctrl+shift+enter']     = function(self) self:execLine() end,
    ['ctrl+shift+return']    = function(self) self:execLine() end,
    ['ctrl+del']             = function(self) lovr.filesystem.remove('init.lua') end,
    ['alt+l']                = function(self) self.buffer:insertString('lovr.graphics.') end,
    ['ctrl+o']               = function(self) self:listFiles("/") end,
    ['f2']                   = function(self) self:reloadCode() end,
    ['f5']                   = function(self) lovr.event.push('restart') end,
    ['f10']                  = function(self) self:setFullscreen(not self.fullscreen) end,
    ['ctrl+space']           = function(self) self:center() end,
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

function m:openFile(filename)
  if not lovr.filesystem.isFile(filename) then
    return false, "no such file"
  end
  local content = lovr.filesystem.read(filename)
  print('file open', path, 'size', #content)
  self.buffer:setText(content)
  local coreFile = lovr.filesystem.getRealDirectory(filename) == lovr.filesystem.getSource()
  self.buffer:setName((coreFile and 'core! ' or '').. filename)
  self.path = filename
  self:refresh()
end

function m:listFiles(path)
  self.buffer:setText('')
  self.buffer:setName('FILES')
  for _,filename in ipairs(lovr.filesystem.getDirectoryItems(path)) do
    self.buffer:insertString(string.format('self:openFile(\'%s\')\n', filename))
  end
end

function m:saveFile(filename)
  bytes = lovr.filesystem.write(filename, self.buffer:getText())
  self.path = filename
  self.buffer:setName(filename)
  print('file save', filename, 'size', bytes)
  return bytes
end

function m:draw()
  if not self.fullscreen then
    self.pane:draw()
    --self.pane:draw(require'sandbox')
  else
    lovr.graphics.clear(highlighting.background)
    lovr.graphics.push()
    lovr.graphics.translate(-50,50,-100)
    lovr.graphics.scale(0.05)
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

function m:center()
  local x,y,z, angle, ax,ay,az = lovr.headset.getPose('head')
  local headTransform = mat4(x,y,z, angle, ax,ay,az)
  local headPosition = vec3(headTransform:mul(0,0,0))
  local panePosition = vec3(headTransform:mul(0,0,-1))
  self.pane.transform:lookAt(panePosition, headPosition, vec3(0,1,0))
end


-- key handling
function m:keypressed(k)
  if keymapping.buffer[k] then
    self.buffer[keymapping.buffer[k]](self.buffer)
  end
  if keymapping.macros[k] then
    print('executing macro for', k)
    keymapping.macros[k](self)
  end
  self:refresh()
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
    self.buffer:ensureCursorInView()
  end
end

function m:textinput(k)
  self.buffer:insertCharacter(k)
  self:refresh()
end

-- code execution environment

function m:reloadCode()
  self:saveFile(self.path)
  local importName = self.path:match('([^%.]+)%.lua')
  package.loaded[importName] = nil
  playground = require(importName)
  return
end

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
  local environment = {self=self, print=print}
  setfenv(userCode, environment)
  -- timber! 
  return pcall(userCode)
end

return m
