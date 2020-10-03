local editors = require'editors'

local modifiers = {ctrl = false, alt = false, shift = false}

-- project directory; expected to have main.lua inside
local projectName = 'sandbox'
-- source file that can be dynamically hotswapped
local hotswapName = 'main'

-- contained callbacks that loaded module tried to register as global
-- init'ed as stubs, overwritten on project module load
local callbacks = {
  draw = function () end,
  update = function () end,
  keypressed = function (key, scancode, isrepeat) end,
  keyreleased = function (key, scancode) end,
  textinput = function (k) end,
}


function lovr.load()
  reloadCode(projectName .. '/main')
  local editor = editors.new(1, 1)
  editor:listFiles(projectName)
  editor:center()
end


function lovr.update(dt)
  callbacks.update(dt)
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  lovr.graphics.setFont()
  lovr.graphics.setColor(1,1,1)
  callbacks.draw()
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
  callbacks.keypressed(key, scancode, isrepeat, combo)
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
  callbacks.keyreleased(key, scancode)
end


function lovr.textinput(k)
  if k:match('[^\n]') then
    editors.textinput(k)
  end
  callbacks.textinput(k)
end


function reloadCode(name)
  local stored = {
    load = lovr.load,
    draw = lovr.draw,
    update = lovr.update,
    keypressed = lovr.keypressed,
    keyreleased = lovr.keyreleased,
    textinput = lovr.textinput,
  }
  -- reloading  module
  lovr.filesystem.setRequirePath(projectName .. '/?.lua;' .. '?.lua;?/init.lua;lua_modules/?.lua;lua_modules/?/init.lua')
  package.loaded[name] = nil
  require(name)

  -- handling lovr callbacks that loaded module has overwritten
  if stored.load ~= lovr.load then lovr.load() end  -- call once (might as well right now) and forget
  for _, fname in ipairs({'draw', 'update', 'keypressed', 'keyreleased', 'textinput'}) do
    if stored[fname] ~= lovr[fname] then
      lovr[fname], callbacks[fname] = stored[fname], lovr[fname]  -- the switch
      -- own lovr callbacks are restored and loaded module's callbacks will be called as needed
    end
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
