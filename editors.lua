local m = {} -- floating pane of editable code
m.__index = m
local buffer = require'buffer'
local panes = require'panes'

local keymapping      = {
  ['up']                  = 'cursorUp',
  ['alt+up']              = 'cursorJumpUp',
  ['down']                = 'cursorDown',
  ['alt+down']            = 'cursorJumpDown',
  ['left']                = 'cursorLeft',
  ['ctrl+left']           = 'cursorJumpLeft',
  ['ctrl+right']          = 'cursorJumpRight',
  ['right']               = 'cursorRight',
  ['home']                = 'cursorHome',
  ['end']                 = 'cursorEnd',
  ['pageup']              = 'pageUp',
  ['pagedown']            = 'pageDown',
  ['tab']                 = 'insertTab',
  ['return']              = 'breakLine',
  ['enter']               = 'breakLine',
  ['delete']              = 'deleteRight',
  ['backspace']           = 'deleteLeft',
  ['ctrl+backspace']      = 'deleteWord',
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
}

function m.new(width, height)
  local self = setmetatable({}, m)
  self.pane = panes.new(width, height)
  self.cols = math.floor(width  * self.pane.canvasSize / self.pane.fontWidth)
  self.rows = math.floor(height * self.pane.canvasSize / self.pane.fontHeight)
  self.buffer = buffer.new(self.cols, self.rows,
    function(text, col, row, tokenType) -- draw single token
      local color = highlighting[tokenType] or 0xFFFFFF
      lovr.graphics.setColor(color)
      self.pane:drawText(text, col, row)
    end,
    function (col, row, width, tokenType) --draw rectangle
      local color = highlighting[tokenType] or 0xFFFFFF
      lovr.graphics.setColor(color)
      self.pane:drawTextRectangle(col, row, width)
    end)
  self:refresh()
  return self
end

function m:openFile(path)
  if not lovr.filesystem.isFile(path) then
    return false, "no such file"
  end
  local content = lovr.filesystem.read(path)
  print('file open', path, 'size', #content)
  self.buffer:setText(content)
end

function m:listFiles(path)
  local list = table.concat(lovr.filesystem.getDirectoryItems(path), " | ")
  print('list:', list)
  return list
end

function m:saveFile(filename)
  bytes = lovr.filesystem.write(filename, self.buffer:getText())
  print('file save', path, 'size', bytes)
end

function m:draw()
  self.pane:draw()
end

function m:refresh()
  self.pane:drawCanvas(function()
    lovr.graphics.clear(highlighting.background)
    self.buffer:drawCode()
  end)
end


-- key handling

local macros = {
  ['ctrl+shift+backspace']  = 'self.buffer:setText("")',
  ['ctrl+shift+o']          = 'self:openFile("playground.lua")',
  ['ctrl+s']                = 'self:saveFile("playground.lua")',
}

function m:keypressed(k)
  if keymapping[k] then
    self.buffer[keymapping[k]](self.buffer)
  elseif macros[k] then
    print('executing', k, macros[k])
    print(self:execUnsafely(macros[k]))
  elseif k == 'ctrl+shift+return' then
    self:execLine()
  end
  self:refresh()
end

function m:textinput(k)
  self.buffer:insertCharacter(k)
end

-- code execution environment

function m:execLine()
  local line = self.buffer:getCursorLine()
  local lineNum = self.buffer.cursor.y
  local commentPos = line:find("%s+%-%-")
  if commentPos then
    line = line:sub(1, commentPos - 1)
  end
  local cursorX = self.buffer.cursor.x
  local success, result = self:execUnsafely(line)
  self.buffer.lines[lineNum] = line .. " --" .. tostring(result)
  self.buffer:lexLine(lineNum)
  self.buffer.cursor.x = cursorX
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
