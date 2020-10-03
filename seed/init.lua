local editors = require'editors'

local modifiers = {ctrl = false, alt = false, shift = false}

-- project directory; expected to have main.lua inside
local projectName = 'sandbox'
-- source file that can be dynamically hotswapped
local hotswapName = 'main'

-- stub draw, overwritten on module load
local function projectDraw() end
local function projectUpdate() end

function lovr.load()
  reloadCode(projectName .. '/main')
  local editor = editors.new(1, 1)
  editor:listFiles(projectName)
  editor:center()
end


function lovr.update(dt)
  projectUpdate(dt)
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  lovr.graphics.setFont()
  lovr.graphics.setColor(1,1,1)
  projectDraw()
end


function lovr.keypressed(key, scancode, isrepeat)
  if key == 'lctrl' or key == 'rctrl' then
    modifiers.ctrl = true
    return
  elseif key == 'lalt' or key == 'ralt' then
    modifiers.alt = true
    return
  elseif key == 'lshift' or key == 'rshift' then
    modifiers.shift = true
    return
  end
  local combo = string.format('%s%s%s%s',
    modifiers.ctrl  and 'ctrl+'  or '',
    modifiers.alt   and 'alt+'   or '',
    modifiers.shift and 'shift+' or '',
    key)
  if combo =='ctrl+r' then
    editors.active:saveFile()
    reloadCode(hotswapName)
  end
  if combo =='ctrl+shift+r' then
    lovr.event.push('restart')
  end
  if combo =='escape' then
    lovr.event.push('quit')
  end
  editors.keypressed(combo)
end


function lovr.keyreleased(key, scancode)
  if key == 'lctrl' or key == 'rctrl' then
    modifiers.ctrl = false
    return
  elseif key == 'lalt' or key == 'ralt' then
    modifiers.alt = false
    return
  elseif key == 'lshift' or key == 'rshift' then
    modifiers.shift = false
    return
  end
end


function lovr.textinput(k)
  if k:match('[^\n]') then
    editors.textinput(k)
  end
end


function reloadCode(name)
  local storedLoad = lovr.load
  local storedDraw = lovr.draw
  local storedUpdate = lovr.update

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
  if storedUpdate ~= lovr.update then
    lovr.update, projectUpdate = storedUpdate, lovr.update -- keep own lovr.draw, but store projectDraw
  end
end

--[[ Revert to initial development environment (factory reset)
If environment gets messed up beyond repair, use this mechanism to overwrite basic
environment with initial sources. Any additional user source files won't be affected,
just built-in ones (init, editors, pane, buffer, lua-lexer, sandbox).
To proceed, place cursor on line below and press ctrl+shift+enter.

lovr.filesystem.remove('init.lua')

!! last chance to back out: save this file now with ctrl+s !!
To apply the reset, restart the system with f5.
Environment will be reverted to inital condition.
--]]
