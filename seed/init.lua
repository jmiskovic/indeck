local editors = require'editors'
lovr.keyboard = require 'lovr-keyboard'

-- project directory; expected to have main.lua inside
local projectName = 'sandbox'
-- source file that can be dynamically hotswapped
local hotswapName = 'main'

-- stub draw, overwritten on module load
local function projectDraw()
end

-- desktop simulator hack to keep camera in place
function lovr.mirror_()
  lovr.graphics.clear()
  lovr.draw()
end


function lovr.load()
  reloadCode(projectName .. '/main')
  local editor = editors.new(1, 1)
  editor:listFiles(projectName)
  editor:center()
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  lovr.graphics.setColor(1,1,1)
  projectDraw()
end


function lovr.keyboard.keypressed(k, combo)
  if k =='f2' or k =='media_play_pause' then 
    editors.active:saveFile()
    reloadCode(hotswapName)
  end
  if k =='f5' then 
    lovr.event.push('restart')
  end
  if k =='escape' then
    lovr.event.push('quit')
  end
  editors.keypressed(combo)
end


function lovr.keyboard.textinput(k)
  editors.textinput(k)
end


function reloadCode(name)
  local storedLoad = lovr.load
  local storedDraw = lovr.draw

  -- reloading  module
  lovr.filesystem.setRequirePath(projectName .. '/?.lua;' .. '?.lua;?/init.lua;lua_modules/?.lua;lua_modules/?/init.lua')
  package.loaded[name] = nil
  require(name)

  -- handling overwriten lovr callbacks
  if storedLoad ~= lovr.load then
    lovr.load() -- module expects it's lovr.load() implementation to be called
  end
  if storedDraw ~= lovr.draw then
    lovr.draw, projectDraw = storedDraw, lovr.draw -- keep own lovr.draw, but store projectDraw
  end
end

--[[ Reset to initial development environment
If environment gets messed up beyond repair, use this mechanism to overwrite basic
environment with initial sources. Any additional user source files won't be affected,
just built-in ones (init, editors, pane, buffer, lua-lexer, lovr-keyboard, sandbox).
To proceed, place cursor on line below and press ctrl+shift+enter.

lovr.filesystem.remove('init.lua')

!! last chance to back out: save this file now with ctrl+s !!
To apply the reset, restart the system with f5 to reload initial code.
--]]
