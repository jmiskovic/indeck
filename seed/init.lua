local editors = require'editors'
lovr.keyboard = require 'lovr-keyboard'
-- hotswapped module: needs to have load(), update(dt) and draw() functions
local hotswapName = 'sandbox'
local hotswapModule

local editor

-- desktop simulator hack to keep camera in place
function lovr.mirror_()
  lovr.graphics.clear()
  lovr.draw()
end


function lovr.load()
  hotswapModule = require(hotswapName)
  hotswapModule.load()
  editor = editors.new(1, 1)
  editor:openFile(hotswapName .. '.lua')
  editor:center()
end


function lovr.update(dt)
  hotswapModule.update(dt)
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  hotswapModule.draw()
end


function lovr.keyboard.keypressed(k, combo)
  if k =='f2' or k =='media_play_pause' then 
    reloadCode()
  end
  if k =='escape' then
    lovr.event.push('quit')
  end
  editors.active:keypressed(combo)
end


function lovr.keyboard.textinput(k)
  editors.active:textinput(k)
end


function reloadCode()
  editors.active:saveFile(editors.active.path)
  package.loaded[hotswapName] = nil
  hotswapModule = require(hotswapName)
  hotswapModule.load()
end

--[[ Reload all initial code
If environment gets messed up beyond repair, use this mechanism to overwrite basic
environment with initial sources. Any additional user source files won't be affected,
just built-in ones (init, editors, pane, buffer, lua-lexer, lovr-keyboard, sandbox).
To proceed, place cursor on line below and press ctrl+shift+enter.

lovr.filesystem.remove('init.lua')

(last chance to back out: save this file now with ctrl+s)
Restart the system with f5 to reload initial code.
--]]
