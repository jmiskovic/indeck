local m = {} -- platform independant text buffer
local lexer = require'lua-lexer'

local clipboard = '' -- shared between buffer instances

--helper functions
local function sanitize(text)
  text = text:gsub('[\192-\255][\128-\191]*', '?') -- remove non-ASCII chars which would cause crash
  text = text:gsub('\t', '')                       -- tabs are handled with buffer:insertTab()
  return text
end

local insertCharAt = function(text, c, pos)
  c = sanitize(c)
  local first = text:sub(1, pos)
  local last = text:sub(pos + 1)
  return first .. c .. last, #c
end


local repeatN = function(n, f, ...)
  for i=1,n do f(...) end
end

function m.new(cols, rows, drawToken, drawRectangle, initialText)
  local buffer = {
    -- all coordinates in text space (integers)
    cols = cols,
    rows = rows,
    name = '',
    cursor    = {x=0, y=1}, -- x is 0-indexed, y is 1-indexed
    selection = {x=0, y=1}, -- x is 0-indexed, y is 1-indexed
    -- selected text spans between cursor and selection marker
    scroll = {x=5, y=0}, -- both 0-indexed
    lines = {}, -- text broken in lines
    lexed = {}, -- text lines broken into tokens
    drawToken = drawToken,
    drawRectangle = drawRectangle,
    -- 'public' api
    getText = function(self)
      return table.concat(self.lines, '\n')
    end,
    getCursorLine = function(self)
      return self.lines[self.cursor.y]
    end,
    setName = function(self, name)
      self.name = name:gsub('%c', '')
    end,
    setText = function(self, text)
      text = sanitize(text)
      self.lines = {}
      self.lexed = lexer(text)
      for _, line in ipairs(self.lexed) do
        local lineStrings = {}
        for _, token in ipairs(line) do
          table.insert(lineStrings, token.data)
        end
        table.insert(self.lines, table.concat(lineStrings, ''))
      end
      self:updateView()
      self:deselect()
    end,
    drawCode = function(self, pass)
      local linesToDraw = math.min(self.rows, #(self.lexed)-self.scroll.y)
      local selectionFrom, selectionTo = self:selectionSpan()
      local selectionWidth = (selectionTo.x + selectionTo.y * self.cols) - (selectionFrom.x + selectionFrom.y * self.cols)
      -- highlight cursor line
      if selectionWidth == 0 then
        self.drawRectangle(pass, -1, self.cursor.y - self.scroll.y, self.cols + 2, 'cursorline')
      end
      -- selection
      local x, y = selectionFrom.x, selectionFrom.y
      self.drawRectangle(pass, x - self.scroll.x, y - self.scroll.y, selectionWidth, 'selection')
      selectionWidth = selectionWidth - (self.cols - selectionFrom.x)
      while selectionWidth > 0 do
        y = y + 1
        self.drawRectangle(pass, 0 - self.scroll.x, y - self.scroll.y, selectionWidth, 'selection')
        selectionWidth = selectionWidth - self.cols
      end
      -- file content
      for y = 1, linesToDraw do
        local x = -self.scroll.x
        local currentLine = y + self.scroll.y
         -- draw cursor line and caret
        if currentLine == self.cursor.y then
          self.drawToken(pass, '|', self.cursor.x - self.scroll.x - 0.5, y, 'caret')
        end
        -- draw single line of text
        local lineTokens = self.lexed[currentLine]
        for _, token in ipairs(lineTokens) do
          self.drawToken(pass, token.data, x, y, token.type)
          x = x + #token.data
        end
      end
      -- status line
      self.drawToken(pass, self.statusLine, self.cols - #self.statusLine, 0, 'comment')
    end,
    -- cursor movement
    cursorUp = function(self)
      self.cursor.y = self.cursor.y - 1
      self:updateView()
    end,
    cursorDown = function(self)
      self.cursor.y = self.cursor.y + 1
      self:updateView()
    end,
    cursorJumpUp = function(self)
      repeatN(10, self.cursorUp, self)
    end,
    cursorJumpDown = function(self)
      repeatN(10, self.cursorDown, self)
    end,
    cursorLeft = function(self)
      if self.cursor.x == 0 then
        if self.cursor.y > 1 then
          self:cursorUp()
          self:cursorEnd()
        else
          return false;
        end
      else
        self.cursor.x = self.cursor.x - 1
        self:updateView()
      end
      return true
    end,
    cursorRight = function(self)
      local length = string.len(self.lines[self.cursor.y])
      if self.cursor.x == length then
        if self.cursor.y < #(self.lines) then
          self:cursorDown()
          self:cursorHome()
        else
          return false
        end
      else
        self.cursor.x = self.cursor.x + 1
        self:updateView()
      end
      return true
    end,
    cursorJumpLeft = function(self)
      self:cursorLeft()
      local pattern = self:charAtCursor():find('[%d%l%u]') and '[%d%l%u]' or '%s'
      self:repeatOverPattern(pattern, self.cursorLeft, self)
    end,
    cursorJumpRight = function(self)
      self:cursorRight()
      local pattern = self:charAtCursor():find('[%d%l%u]') and '[%d%l%u]' or '%s'
      self:repeatOverPattern(pattern, self.cursorRight, self)
    end,
    cursorHome = function(self)
      self.cursor.x = 0
      self:updateView()
    end,
    cursorEnd = function(self)
      self.cursor.x = string.len(self.lines[self.cursor.y])
      self:updateView()
    end,
    cursorPageUp = function(self)
      self.cursor.y = self.cursor.y - self.rows
      self:updateView()
    end,
    cursorPageDown = function(self)
      self.cursor.y = self.cursor.y + self.rows
      self:updateView()
    end,
    cursorJumpHome = function(self)
      self.cursor.x, self.cursor.y = 0, 1
      self:updateView()
    end,
    cursorJumpEnd = function(self)
      self.cursor.y = #self.lines
      self.cursor.x = #self.lines[self.cursor.y]
      self:updateView()
    end,
    -- inserting and removing characters
    insertCharacter = function(self, c)
      self:deleteSelection()
      local length
      self.lines[self.cursor.y], length = insertCharAt(self.lines[self.cursor.y], c, self.cursor.x)
      self:lexLine(self.cursor.y)
      self.cursor.x = self.cursor.x + length
      self:updateView()
      self:deselect()
    end,
    insertTab = function(self)
      self:deleteSelection()
      self:insertString('  ') -- tab width is adjustable here
      self:deselect()
    end,
    breakLine = function(self, withoutIndent)
      self:deleteSelection()
      local nl = self.lines[self.cursor.y]
      local bef = nl:sub(1,self.cursor.x)
      local aft = nl:sub(self.cursor.x + 1, #nl)
      local indent = #(bef:match('^%s+') or '')
      self.lines[self.cursor.y] = bef
      self:lexLine(self.cursor.y)
      table.insert(self.lines, self.cursor.y + 1, aft)
      table.insert(self.lexed, self.cursor.y + 1, {})
      self:lexLine(self.cursor.y + 1)
      self:cursorHome()
      self:cursorDown()
      self:deselect()
      if not withoutIndent then
        repeatN(indent, self.insertCharacter, self, ' ')
      end
    end,
    deleteRight = function(self)
      if self:isSelected() then
        self:deleteSelection()
      else
        local length = string.len(self.lines[self.cursor.y])
        if length == self.cursor.x then -- end of line
          if self.cursor.y < #self.lines then
            -- if we have another line, remove newline by joining lines
            local nl = self.lines[self.cursor.y] .. self.lines[self.cursor.y + 1]
            self.lines[self.cursor.y] = nl
            self:lexLine(self.cursor.y)
            table.remove(self.lines, self.cursor.y + 1)
            table.remove(self.lexed, self.cursor.y + 1)
          end
        else -- middle of line, remove char
          local nl = self.lines[self.cursor.y]
          local bef = nl:sub(1, self.cursor.x)
          local aft = nl:sub(self.cursor.x + 2, string.len(nl))
          self.lines[self.cursor.y] = bef..aft
          self:lexLine(self.cursor.y)
        end
      end
    end,
    deleteLeft = function(self)
      if self:isSelected() then
        self:deleteSelection()
      elseif self:cursorLeft() then
        self:deleteRight()
      end
    end,
    deleteWord = function(self)
      self:deleteLeft()
      local pattern = self:charAtCursor():find('[%d%l%u]') and '[%d%l%u]' or '%s'
      self:repeatOverPattern(pattern, self.deleteLeft, self)
    end,
    -- clipboard
    cutText = function(self)
      if self:isSelected() then
        self:copyText()
        self:deleteSelection()
      elseif #self.lines > 1 then
        clipboard = self.lines[self.cursor.y] .. '\n'
        table.remove(self.lines, self.cursor.y)
        table.remove(self.lexed, self.cursor.y)
      else
        self.lines[1] = ''
        self.lexed[1] = {}
      end
      self:updateView()
    end,
    copyText = function(self)
      if self:isSelected() then
        local selectionFrom, selectionTo = self:selectionSpan()
        local lines = {}
        for y = selectionFrom.y, selectionTo.y do
          local fromX = y == selectionFrom.y and selectionFrom.x  or 0
          local   toX = y == selectionTo.y   and selectionTo.x    or self.lines[y]:len()
          table.insert(lines, self.lines[y]:sub(fromX + 1, toX))
        end
        clipboard = table.concat(lines, '\n')
      else -- copy cursor line
        clipboard = self.lines[self.cursor.y] .. '\n'
      end
    end,
    pasteText = function(self)
      self:deleteSelection()
      self:insertString(clipboard)
      self:updateView()
    end,
    -- helper functions
    isSelected = function(self)
      return self.selection.x ~= self.cursor.x or self.selection.y ~= self.cursor.y
    end,
    selectionSpan = function(self)
      if self.selection.y * self.cols + self.selection.x < self.cursor.y * self.cols + self.cursor.x then
        return self.selection, self.cursor
      else
        return self.cursor, self.selection
      end
    end,
    deleteSelection = function(self)
      if not self:isSelected() then return end
      local selectionFrom, selectionTo = self:selectionSpan()
      local singleLineChange = selectionFrom.y == selectionTo.y
      for y = selectionTo.y, selectionFrom.y, -1 do
        if y > selectionFrom.y and y < selectionTo.y then
          table.remove(self.lines, y)
          table.remove(self.lexed, y)
        else
          local fromX = y == selectionFrom.y and selectionFrom.x  or 0
          local   toX = y == selectionTo.y   and selectionTo.x    or self.lines[y]:len()
          local bef = self.lines[y]:sub(0, fromX)
          local aft = self.lines[y]:sub(toX + 1, self.lines[y]:len())
          self.lines[y] = bef .. aft
        end
      end
      self.cursor.x, self.cursor.y = selectionFrom.x, selectionFrom.y
      self:deselect()
      if singleLineChange then
        self:lexLine(self.cursor.y)
      else
        self:deleteRight()
        self:lexAll()
      end
      self:updateView()
    end,
    deselect = function(self)
      self.selection.x, self.selection.y = self.cursor.x, self.cursor.y
    end,
    jumpToLine = function(self, lineNumber, columnNumber)
      lineNumber = math.min(lineNumber or 1, #self.lines)
      columnNumber = math.min(columnNumber or 0, #self.lines[lineNumber] - 1)
      self.cursor.x = columnNumber
      self.cursor.y = lineNumber
      self.scroll.y = math.max(lineNumber - math.floor(self.rows / 2), 0)
      self.scroll.x = math.max(columnNumber - math.floor(7 * self.cols / 8), 0)
      self:deselect()
    end,
    insertString = function(self, str)
      local singleLineChange = true
      for c in str:gmatch('.') do
        if c == '\n' then
          singleLineChange = false
          self:deselect()
          self:breakLine(true)
        elseif c:match('%C') then
          local length
          self.lines[self.cursor.y], length = insertCharAt(self.lines[self.cursor.y], c, self.cursor.x)
          self.cursor.x = self.cursor.x + length
        end
      end
      if singleLineChange then
        self:lexLine(self.cursor.y)
      else
        self:lexAll()
      end
      self:deselect()
    end,
    charAtCursor = function(self)
      return self.lines[self.cursor.y]:sub(self.cursor.x, self.cursor.x)
    end,
    lexLine = function(self, lineNum)
      self.lexed[lineNum] = lexer(self.lines[lineNum])[1]
    end,
    lexAll = function(self) -- lexing single line cannot handle multiline comments and strings
      self.lexed = lexer(self:getText())
    end,
    updateView = function(self)
      -- constrain cursor to text limits
      self.cursor.y = math.max(self.cursor.y, 1)
      self.cursor.y = math.min(self.cursor.y, #(self.lines))
      local lineLength = string.len(self.lines[self.cursor.y] or '')
      self.cursor.x = math.max(self.cursor.x, 0)
      self.cursor.x = math.min(self.cursor.x, lineLength)
      -- constrain selection to text limits
      self.selection.y = math.max(self.selection.y, 1)
      self.selection.y = math.min(self.selection.y, #(self.lines))
      local lineLength = string.len(self.lines[self.selection.y] or "")
      self.selection.x = math.max(self.selection.x, 0)
      self.selection.x = math.min(self.selection.x, lineLength)
      -- keep cursor on screen
      if self.cursor.y <= self.scroll.y then
        self.scroll.y = self.cursor.y - 1
      elseif self.cursor.y > self.scroll.y + self.rows then
        self.scroll.y = self.cursor.y - self.rows
      end
      if self.cursor.x < self.scroll.x then
        self.scroll.x = math.max(self.cursor.x - 10, 0)
      elseif self.cursor.x > self.scroll.x + self.cols then
        self.scroll.x = self.cursor.x + 10 - self.cols
      end
      -- update status line
      self.statusLine = string.format('L%d C%d  %s', self.cursor.y, self.cursor.x, self.name)
    end,
    repeatOverPattern = function(self, pattern, moveF, ...)
      -- execute moveF() over text as long as character matches pattern and cursor moves
      while self:charAtCursor():match(pattern) do
        local oldX, oldY = self.cursor.x, self.cursor.y
        moveF(...)
        if (oldX == self.cursor.x and oldY == self.cursor.y) then break end
      end
    end,
  }
  -- generate all select_ and move_ actions
  for _, functionName in ipairs({'Up', 'Down', 'Left', 'Right', 'JumpUp', 'JumpDown', 'JumpLeft', 'JumpRight',
                                               'Home', 'End', 'PageUp', 'PageDown', 'JumpHome', 'JumpEnd'}) do
    buffer['select' .. functionName] = function(self)
      --self.selection = self.selection or {x= self.cursor.x, y= self.cursor.y}
      self['cursor' .. functionName](self)
    end
    buffer['move' .. functionName] = function(self)
      self['cursor' .. functionName](self)
      self:deselect()
    end
  end
  buffer:setText(initialText or '')
  return buffer
end

return m

--[[ Lua pattern matching
str:find(pattern)        finds the first instance of pattern in string and returns its position
str:gmatch(pattern)      when called repeatedly, returns each successive instance of pattern in string
str:gsub(pattern, repl)  returns a string where all instances of pattern in string have been replaced with repl
str:match(pattern)       returns the first instance of pattern in string

X  represents the character X itself as long as it is not a magic character
.   represents any single character
%a  represents all letters A-Z and a-z
%c  represents all control characters such as Null, Tab, Carr.Return, Linefeed, Delete, etc
%d  represents all digits 0-9
%l  represents all lowercase letters a-z
%p  represents all punctuation characters or symbols such as . , ? ! : ; @ [ ] _ { } ~
%s  represents all white space characters such as Tab, Carr.Return, Linefeed, Space, etc
%u  represents all uppercase letters A-Z
%w  represents all alphanumeric characters A-Z and a-z and 0-9
%x  represents all hexadecimal digits 0-9 and A-F and a-f
%z  represents the character with code \000 because embedded zeroes in a pattern do not work

    The upper case letter versions of the above reverses their meaning
    i.e. %A represents all non-letters and %D represents all non-digits

+       one or more repetitions
* or -  zero or more repetitions
?       optional (zero or one occurrence)
%Y      represents the character Y if it is any non-alphanumeric character
        This is the standard way to get a magic character to match itself
        Any punctuation character (even a non magic one) preceded by a % represents itself
        e.g. %% represents % percent and %+ represents + plus
[set]   represents the class which is the union of all characters in the set
        A range of characters is specified by separating first and last character of range with a - hyphen e.g. 1-5
        All classes described above may also be used as components in the set
        e.g. [%w~] (or [~%w]) represents all alphanumeric characters plus the ~ tilde
[^set]  represents the complement of set, where set is interpreted as above
        e.g. [^A-Z] represents any character except upper case letters                                           --]]
