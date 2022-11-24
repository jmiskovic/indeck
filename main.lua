-- project directory; expected to have main.lua inside
local project_name = 'vheadset'

-- recovery mode has own environment, stop executing if activated
if require('recovery') then return end
local editors = require'editors'
local modifiers = {ctrl = false, alt = false, shift = false}
local reloadCode

-- copy example project to save dir if it doesn't exist
if not lovr.filesystem.isDirectory('projects') then
  lovr.filesystem.createDirectory('example')
end
if not lovr.filesystem.isFile('projects/example/main.lua') then
  print('copying example project into directory', lovr.filesystem.getSaveDirectory())
  local content = lovr.filesystem.read('seed/main.lua')
  lovr.filesystem.createDirectory('projects/example')
  local success = lovr.filesystem.write('projects/example/main.lua', content)
  if not success then print('! could not write to save directory') end
end


-- contained callbacks that loaded user project tried to register
-- init'ed as stubs, overwritten on user project load
local callbacks = {
  draw = function (pass) end,
  update = function (dt) end,
  keypressed = function (key, scancode, isrepeat) end,
  keyreleased = function (key, scancode) end,
  textinput = function (k) end,
}


local function switchToProject(project_dir)
  local stored = {
    load = lovr.load,
    draw = lovr.draw,
    update = lovr.update,
    keypressed = lovr.keypressed,
    keyreleased = lovr.keyreleased,
    textinput = lovr.textinput,
  }
  -- unloading the current project
  package.loaded['main'] = nil
  -- reloading the user project
  local pathsep = package.config:sub(1, 1)
  local full_path = lovr.filesystem.getSaveDirectory() .. pathsep .. 'projects' .. pathsep .. project_dir
  print('loading user project', full_path)
  local success = lovr.filesystem.mount(full_path, '/', false)
  if not success then
    print('! unsucessful; does project dir exist?')
    return
  end
  require('main')
  -- loading user project will overwrite some of indeck's callbacks
  -- here indeck's callbacks are reinstated and user project callbacks are stored for event forwarding
  if stored.load ~= lovr.load then lovr.load() end  -- call user's load() once and forget about it
  for _, fname in ipairs({'draw', 'update', 'keypressed', 'keyreleased', 'textinput'}) do
    if stored[fname] ~= lovr[fname] then
      lovr[fname], callbacks[fname] = stored[fname], lovr[fname]  -- the switch
    end
  end
end


function lovr.load()
  -- remove traces of loaded modules and jump into user code
  package.loaded['main'] = nil
  package.loaded['recovery'] = nil
  lovr.filesystem.unmount(lovr.filesystem.getSource())
  local editor = editors.new(1, 1, switchToProject)
  editor:listFiles()
end


function lovr.update(dt)
  callbacks.update(dt)
end


function lovr.draw(pass)
  -- main pass rendering
  for _, editor in ipairs(editors) do
    editor:draw(pass)
  end
  pass:setColor(1,1,1)
  local skip = callbacks.draw(pass)
  -- drawing to texture in temp passes
  local passes = {}
  for _, editor in ipairs(editors) do
    local editor_pass = editor:drawToTexture()
    table.insert(passes, editor_pass)
  end
  if not skip then
    table.insert(passes, pass)
  end
  return lovr.graphics.submit(passes)
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
    --if editors.active then editors.active:saveFile() end
    reloadCode(project_name)
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
