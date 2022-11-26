-- editor is a floating pane of editable code that accepts keyboard input
local m
m = {}  -- stores functions under keys and also all editors in a list
m.__index = m

m.active = nil  -- reference to the editor that receives text input
m.font = lovr.graphics.newFont('ubuntu-mono.ttf', 24)
m.font:setPixelDensity(1)
m.font_width = m.font:getWidth(' ')
m.font_height = m.font:getHeight()

local buffer = require'buffer'

local keymapping = {
  buffer = {
    ['up']                  = 'moveUp',
    ['down']                = 'moveDown',
    ['volume_down']         = 'moveLeft',
    ['volume_up']           = 'moveRight',
    ['left']                = 'moveLeft',
    ['ctrl+up']             = 'moveJumpUp',
    ['ctrl+down']           = 'moveJumpDown',
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
    ['ctrl+h']               = function(self) m.new(1, 1):openHelp() end,
    ['ctrl+shift+enter']     = function(self) self:execLine() end,
    ['ctrl+shift+return']    = function(self) self:execLine() end,
    ['ctrl+shift+home']      = function(self) self:center() end,
  },
}


local palette =
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
  active_bar   = 0xd35c5c, -- editor sidebar
  disabled_bar = 0x242424,
}


local function drawRectangle(pass, col, row, columns, tokenType)
  local color = palette[tokenType] or tonumber(tokenType)
  pass:setColor(color)
  -- rectangle in text-coordinates
  local width = columns * m.font_width
  local x =  col * m.font_width
  local y = -row * m.font_height
  local height = m.font_height
  pass:plane(x + width/2, y - height/2, -2,  width, height)
end


local function drawToken(pass, text, col, row, tokenType)
  local color = palette[tokenType] or 0xFFFFFF
  -- in-editor preview of colors in hex format 0xRRGGBBAA
  if tokenType == 'number' and text:match('0x%x+') then
    drawRectangle(pass, col, row, 1, text)
  end
  pass:setColor(color)
  pass:setFont(m.font)
  local x =  col * m.font_width
  local y = -row * m.font_height
  pass:text(text, x,y,0, 1, 0, 1,0,0, 0, 'left','top')
end


function m.new(width, height, switchToProjectFn)
  local self = setmetatable({}, m)
  self.width = width     -- meters
  self.height = height
  self.texture_size = 1024
  self.texture = nil     -- lazily created in drawToTexture
  self.transform = lovr.math.newMat4(.1,1.6,-1.3, 1,1,1, 0, 0,1,0)
  self.ortho = lovr.math.newMat4():orthographic(0, self.texture_size, 0, -self.texture_size, -10, 10)
  self.font:setPixelDensity(1)
  self.path = ''
  self.is_dirty = true
  self.switchToProject = switchToProjectFn or function() end
  self.cols = math.floor(width  * self.texture_size / m.font_width)
  self.rows = math.floor(height * self.texture_size / m.font_height) - 1
  self.buffer = buffer.new(self.cols, self.rows, drawToken, drawRectangle)
  self:center()
  table.insert(m, self)
  m.active = self
  return self
end


function m:setText(content)
  self.buffer:setText(content)
end


function m:center()
  local x,y,z, angle, ax,ay,az = 0,0,0, 0, 1,0,0
  if lovr.headset then
    x,y,z, angle, ax,ay,az = lovr.headset.getPose('head')
  end
  local headTransform = mat4(x,y,z, angle, ax,ay,az)
  local headPosition = vec3(headTransform)
  local panePosition = vec3(headTransform:mul(0,0,-1.3))
  self.transform:target(panePosition, headPosition)
end


function m:openFile(filename_line)
  -- file path can optionally include line number to jump to, like 'main.lua:50'
  local filename, linenumber = filename_line:match('([^:]+):([%d]+)')
  filename = filename or filename_line
  local content = ' '
  if lovr.filesystem.isFile(filename) then
    content = lovr.filesystem.read(filename)
  end
  print('file open', filename, 'size', #content)
  self.buffer:setText(content)
  local coreFile = lovr.filesystem.getRealDirectory(filename) == lovr.filesystem.getSource()
  self.buffer:setName((coreFile and 'core! ' or '').. filename)
  self.path = filename
  self:refresh()
end


function m:removeFile(file_path)
  if lovr.filesystem.isFile(file_path) then
    print('deleting', file_path)
    lovr.filesystem.remove(file_path)
  else
    local err =  file_path .. ' does not exist'
    print('! ' .. err)
    error(err)
  end
end


function m:openHelp(path)
  self:listFiles('help')
end


function m:listFiles(path)
  print('listing', path)
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
  self.buffer:insertString('-- directory listing\n')
  parent = parent:sub(1, #parent - 1)
  self.buffer:insertString(string.format('self:listFiles(\'%s\') -- parent dir\n', parent))
  --list directory items, first subdirectories then files
  local lines = 1
  local files = {}
  for _,filename in ipairs(lovr.filesystem.getDirectoryItems(path)) do
    local fullpath = path .. '/' .. filename
    if lovr.filesystem.isDirectory(fullpath) then
      self.buffer:insertString(string.format('self:listFiles(\'%s\')\n', fullpath))
    else
      table.insert(files, fullpath)
    end
    lines = lines + 1
  end

  if path == '' then -- root dir should only list directories and project-switching
    self.buffer:insertString('\n-- switch to project\n')
    for _,projname in ipairs(lovr.filesystem.getDirectoryItems('projects')) do
      self.buffer:insertString(string.format("self.switchToProject('%s')\n", projname))
    end
  else -- non-root dir shall list source/asset files and helpful commands
    for _, fullpath in ipairs(files) do
      self.buffer:insertString(string.format('self:openFile(\'%s\')\n', fullpath))
    end
    self.buffer:insertString('\n-- useful commands\n')
    self.buffer:insertString('self:openFile(\'new_source.lua\') -- new file\n')
    self.buffer:insertString('self:removeFile(\''..path..'/'..'unwanted.ext\') -- remove file\n')
  end
  self.buffer:insertString('\nctrl+shift+enter   confirm selection')
  self.buffer:jumpToLine(lines, 0)
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
      table.insert(scriptList, '  {')
      table.insert(scriptList,  string.format("    path = '%s:%d',", tostring(editor.path), editor.buffer.cursor.y))
      table.insert(scriptList,  string.format('    pose = {%s}', table.concat({editor.transform:unpack()}, ', ')))
      table.insert(scriptList, '  },\n')
    end
  end
  table.insert(scriptList, '}\n')
  local content = table.concat(scriptList, '\n')
  bytes = lovr.filesystem.write(name .. '.lua', content)
end


function m.restoreSession(name)
  -- close editors, discarding potentially unsaved changes!
  for i = #m, 1, -1 do
    table.remove(m, i)
  end
  -- load in the stored session
  m.active = nil
  package.loaded[name] = nil
  local ok, session = pcall(require, name)
  if ok then
    for _, e in ipairs(session) do
      local editor
      editor = m.new(1, 1)
      editor:openFile(e.path)
      editor.transform:set(unpack(e.pose))
    end
  else
    print(session)
  end
end


function m:draw(pass)
  -- oriented towards -z so that mat4.target() works as expected
  pass:push()
  pass:transform(self.transform)
  pass:setColor(palette.background)
  local margin = 0.02
  pass:plane(0,0, margin / 4, self.width + margin, self.height + margin, math.pi, 0,1,0)
  pass:setColor(1,1,1)
  if self.texture then
    pass:setMaterial(self.texture)
    pass:plane(0,0,0, -self.width, self.height)
    pass:setMaterial()
  end
  pass:setColor(self == m.active and palette.active_bar or palette.disabled_bar)
  local thickness = 0.02
  local handleX = self.width/2 + thickness / 2 + margin
  local handleY = 0
  pass:box(handleX, handleY, 0,  thickness, self.height * 0.8, thickness)
  pass:pop()
end


function m:drawToTexture()
  if not self.texture then
    self.texture = lovr.graphics.newTexture(self.texture_size, self.texture_size, {mipmaps=false})
  end
  local texture_pass = lovr.graphics.getPass('render', {self.texture})
  texture_pass:setDepthWrite(false)
  texture_pass:setViewPose(1, mat4())
  texture_pass:setProjection(1, self.ortho)
  texture_pass:setColor(palette.background)
  texture_pass:fill()
  self.buffer:drawCode(texture_pass)
  return texture_pass
end


function m:refresh()
  self.is_dirty = true
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
  if k == 'ctrl+tab' then     -- select next editor
    local lastEditor = m[#m]
    for _, editor in ipairs(m) do
      if editor == m.active then break end
      lastEditor = editor
    end
    m.active = lastEditor
  elseif k == 'ctrl+w' then       -- close current editor
    local lastEditor
    for i = #m, 1, -1 do
      if m[i] == m.active then
        table.remove(m, i)
      else
        lastEditor = lastEditor or m[i]
      end
    end
    m.active = lastEditor
  elseif k == 'ctrl+shift+s' then
    m.storeSession('indeck-session')
  elseif k == 'ctrl+shift+l' then
    m.restoreSession('indeck-session')
  end
end


function m.textinput(k)
  if m.active then
    m.active.buffer:insertCharacter(k)
    m.active:refresh()
  end
end


-- code execution environment

function m:execLine()
  local line = self.buffer:getCursorLine()
  local commentPos = line:find("%s+%-%-")
  if commentPos then
    line = line:sub(1, commentPos - 1)
  end
  local success, result = self:execUnsafely(line)
  if success then
    self.buffer.statusLine = 'ok' .. ' > ' .. (result or "")
  else
    print('! line exec error:', result)
    self.buffer.statusLine = 'fail' .. ' > ' .. (result or "")
  end
end


function m:execUnsafely(code)
  local userCode, err = loadstring(code)
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
