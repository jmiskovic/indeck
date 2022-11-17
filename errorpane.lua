local m = {} -- single floating pane showing error message and stack trace
m.__index = m
local buffer = require'buffer'
local panes = require'pane'
local editors = require'editors'

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

function m.init(width, height, content)
  height = height * 1.5
  m.pane = panes.new(width, height)
  m.cols = math.floor(width  * m.pane.texture_size / m.pane.fontWidth)
  m.rows = math.floor(height * m.pane.texture_size / m.pane.fontHeight)
  m.buffer = buffer.new(m.cols, m.rows,
    function(pass, text, col, row, tokenType) -- draw single token
      local color = highlighting[tokenType] or 0xFFFFFF
      pass:setColor(color)
      m.pane:drawText(pass, text, col, row)
    end,
    function (pass, col, row, width, tokenType) --draw rectangle
      local color = highlighting[tokenType] or 0xFFFFFF
      pass:setColor(color)
      m.pane:drawTextRectangle(pass, col, row, width)
    end)
  m.buffer:setName('-Error pane-')
  if content then m.setContent(content) end
end


function m.draw(pass)
  local editor_pass
  if m.is_dirty then
    m.is_dirty = false
    editor_pass = m.pane:drawToTexture(
      function(pass)
        m.buffer:drawCode(pass)
    end)
  end
  m.pane:draw(pass)
  return editor_pass
end


function m.setContent(content)
  m.buffer:setText(content)
  m.refresh()
end


function m.refresh()
  m.is_dirty = true
end


function m.jumpToSource()
  local line = m.buffer.lines[m.buffer.cursor.y]
  filename, lineNumber = line:match('([^ %c\\%.]+%.lua):(%d+):')
  if filename and lineNumber and #filename > 0 and editors.active then
    editors.active:openFile(filename)
    editors.active.buffer:jumpToLine(tonumber(lineNumber))
    editors.active:refresh()
  end
end

-- key handling

function m.keypressed(k)
  if     k == 'ctrl+up' then
    m.buffer:moveUp()
    m.refresh()
  elseif k == 'ctrl+down' then
    m.buffer:moveDown()
    m.refresh()
  elseif k == 'ctrl+enter' or k == 'ctrl+return' then
    m.jumpToSource()
  end
end


return m
