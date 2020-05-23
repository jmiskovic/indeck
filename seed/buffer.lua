--[[

self:openFile('editors.lua')
--]]
local m = {} -- platform independant text buffer
local lexer = require'lua-lexer'

--helper functions
local insertCharAt = function(text, c, pos)
  local first = text:sub(1, pos)
  local last = text:sub(pos + 1)
  return first .. c .. last
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
    cursor = {x=0, y=1}, -- x is 0-indexed, y is 1-indexed
    scroll = {x=5, y=0}, -- both 0-indexed
    lines = {}, -- text broken in lines
    lexed = {}, -- text lines broken into tokens
	  drawToken = drawToken,
	  drawRectangle = drawRectangle,
    -- 'public' api
    getText = function(self)
      return table.concat(self.lines, "\n")
    end,
    refresh = function(self) -- lexing single line cannot handle multiline comments and strings
      self.lexed = lexer(self:getText())
    end,
    getCursorLine = function(self)
      return self.lines[self.cursor.y]
    end,
    setName = function(self, name)
      self.name = name:gsub("%c", "")
    end,
    setText = function(self, text)
      self.lines = {}
      self.lexed = lexer(text)
      for i, line in ipairs(self.lexed) do
        lineStrings = {}
        for l, token in ipairs(line) do
          table.insert(lineStrings, token.data)
        end
        table.insert(self.lines, table.concat(lineStrings, ""))
      end
      if self.cursor.y > #(self.lines) then 
        self.cursor.y = #(self.lines) 
      end
      self:ensureCursorInLine()
      self:ensureCursorInView()
    end,
    drawCode = function(self)
      local linesToDraw = math.min(self.rows, #(self.lexed)-self.scroll.y) 
      -- highlight cursor line
      self.drawRectangle(-1, self.cursor.y - self.scroll.y, self.cols + 2, 'cursorline')
      -- file content
      for y = 1, linesToDraw do
        local x = -self.scroll.x 
        local currentLine = y + self.scroll.y
         -- draw cursor line and caret
        if currentLine == self.cursor.y then
          self.drawToken("|", self.cursor.x - self.scroll.x - 0.5, y, 'caret')
        end
        -- draw single line of text
        local lineTokens = self.lexed[currentLine]
        for j, token in ipairs(lineTokens) do
          self.drawToken(token.data, x, y, token.type)
          --print('token',x,y)
          x = x + #token.data
        end
      end
      -- status line
      local status = string.format('L%d C%d  %s', self.cursor.y, self.cursor.x, self.name)
      self.drawToken(status, self.cols - #status, 0, 'comment')
    end,
    -- actions triggered by keystrokes
    cursorUp = function(self)
      if self.cursor.y > 1 then 
        self.cursor.y = self.cursor.y - 1
        self:ensureCursorInLine()
        self:ensureCursorInView()
      end
    end,
    cursorDown = function(self)
      if self.cursor.y < #(self.lines) then 
        self.cursor.y = self.cursor.y + 1
        self:ensureCursorInLine()
        self:ensureCursorInView()
      end
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
        self:ensureCursorInView()
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
        self:ensureCursorInView()
      end
      return true
    end,
    cursorJumpLeft = function(self)
      self:cursorLeft()
      local pattern = self:charAtCursor():find("[%d%l%u]") and "[%d%l%u]" or "%s"
      self:repeatOverPattern(pattern, self.cursorLeft, self)
    end,
    cursorJumpRight = function(self)
      self:cursorRight()
      local pattern = self:charAtCursor():find("[%d%l%u]") and "[%d%l%u]" or "%s"
      self:repeatOverPattern(pattern, self.cursorRight, self)
    end,
    cursorHome = function(self)
      self.cursor.x = 0
      self:ensureCursorInView()
    end,
    cursorEnd = function(self)
      self.cursor.x = string.len(self.lines[self.cursor.y])
      self:ensureCursorInView()
    end,
    cursorPageUp = function(self)
      self.cursor.y = self.cursor.y - self.rows
      if self.cursor.y < 1 then 
        self.cursor.y = 1
      end
      self:ensureCursorInLine()
      self:ensureCursorInView()
    end,
    cursorPageDown = function(self)
      self.cursor.y = self.cursor.y + self.rows
      if self.cursor.y > #(self.lines) then
        self.cursor.y = #(self.lines)
      end
      self:ensureCursorInLine()
      self:ensureCursorInView()
    end,
    insertCharacter = function(self, c)
      self.lines[self.cursor.y] = insertCharAt(self.lines[self.cursor.y], c, self.cursor.x)
      self:lexLine(self.cursor.y)
      self.cursor.x = self.cursor.x + 1
      self:ensureCursorInView()
    end,
    insertTab = function(self)
      self:insertString("  ")
    end,
    breakLine = function(self)
      local nl = self.lines[self.cursor.y]
      local bef = nl:sub(1,self.cursor.x)
      local aft = nl:sub(self.cursor.x + 1, string.len(nl))
      local indent = #(nl:match("^%s+") or "")
      self.lines[self.cursor.y] = bef
      self:lexLine(self.cursor.y)
      table.insert(self.lines, self.cursor.y + 1, aft)
      table.insert(self.lexed, self.cursor.y + 1, {})
      self:lexLine(self.cursor.y + 1)
      self:cursorHome()
      self:cursorDown()
      repeatN(indent, self.insertCharacter, self, " ")
    end,
    deleteRight = function(self)
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
    end,
    deleteLeft = function(self)
      if self:cursorLeft() then
        self:deleteRight()
      end
    end,
    deleteWord = function(self)
      self:deleteLeft()
      local pattern = self:charAtCursor():find("[%d%l%u]") and "[%d%l%u]" or "%s"
      self:repeatOverPattern(pattern, self.deleteLeft, self)
    end,
    jumpToLine = function(self, lineNumber, columnNumber)
      lineNumber = math.min(lineNumber or 1, #self.lines)
      columnNumber = math.min(columnNumber or 0, #self.lines[lineNumber] - 1) 
      self.cursor.x = columnNumber
      self.cursor.y = lineNumber
      self.scroll.y = math.max(lineNumber - math.floor(self.rows / 2), 1)
      self.scroll.x = math.max(columnNumber - math.floor(7 * self.cols / 8), 0)
    end,
    -- internal functions and helpers
    insertString = function(self, str)
      str:gsub("%C", function(c) 
        self.lines[self.cursor.y] = insertCharAt(self.lines[self.cursor.y], c, self.cursor.x)
        self.cursor.x = self.cursor.x + 1
      end)
      self:lexLine(self.cursor.y)
    end,
    charAtCursor = function(self)
      return self.lines[self.cursor.y]:sub(self.cursor.x, self.cursor.x)
    end,
    lexLine = function(self, lineNum)
      self.lexed[lineNum] = lexer(self.lines[lineNum])[1]
    end,
    ensureCursorInLine = function(self)
      local length = string.len(self.lines[self.cursor.y])
      if length < self.cursor.x then
        self.cursor.x = length
      end
    end,
    ensureCursorInView = function(self)
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
  -- generate move_ actions
  for _, functionName in ipairs({'Up', 'JumpUp', 'Down', 'JumpDown', 'Left',
        'JumpLeft', 'JumpRight', 'Right', 'Home', 'End', 'PageUp', 'PageDown'}) do
    buffer['move' .. functionName] = function(self)
      self['cursor' .. functionName](self)
    end
  end
  buffer:setText(initialText or "")
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