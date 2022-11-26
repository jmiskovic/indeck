local editors = require'editors'
local modifiers = {ctrl = false, alt = false, shift = false}
local mounted_project

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


local function runProject()
  local stored = {
    load = lovr.load,
    draw = lovr.draw,
    update = lovr.update,
    keypressed = lovr.keypressed,
    keyreleased = lovr.keyreleased,
    textinput = lovr.textinput,
    errhand = lovr.errhand,
  }
  package.loaded['main'] = nil
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


local function pauseProject()
  callbacks = {
    draw = function (pass) end,
    update = function (dt) end,
    keypressed = function (key, scancode, isrepeat) end,
    keyreleased = function (key, scancode) end,
    textinput = function (k) end,
  }
end


local function switchToProject(project_dir)
  if mounted_project then
    lovr.filesystem.unmount(mounted_project)
  end
  -- reloading the user project
  local pathsep = package.config:sub(1, 1)
  local full_path = lovr.filesystem.getSaveDirectory() .. pathsep .. 'projects' .. pathsep .. project_dir
  print('loading user project', full_path)
  local success = lovr.filesystem.mount(full_path, '', false)
  if not success then
    print('! unsucessful; does project dir exist?')
    return
  end
  mounted_project = full_path
  runProject()
  -- open project's main.lua in active editor
  local path_to_main = 'projects' .. pathsep .. project_dir .. pathsep .. 'main.lua'
  if lovr.filesystem.isFile(path_to_main) and editors.active then
    editors.active:openFile(path_to_main)
  end
end


function lovr.load()
  if lovr.headset then lovr.headset.update() end
  lovr.filesystem.unmount(lovr.filesystem.getSource())
  lovr.filesystem.mount('lovr-api', 'help')
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
  if combo == 'ctrl+p' then -- spawn new editor
    local editor = editors.new(1, 1, switchToProject)
    editor:listFiles()
  elseif combo =='ctrl+r' then -- restart project
    if editors.active then editors.active:saveFile() end
    runProject()
  elseif combo =='ctrl+shift+r' then
    lovr.event.push('restart')
  elseif combo =='escape' then
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


local function wrap(str, limit)
  limit = limit or 60
  local position = 1
  local function check(sp, st, word, fi)
    if fi - position > limit then
      position = st
      return "\n" .. word
    end
  end
  return str:gsub("(%s+)()(%S+)()", check)
end


lovr.errhand = function(message, traceback)
  traceback = traceback or debug.traceback('', 3)
  local restartInfo = message .. '\n' .. traceback
  print('! runtime error')
  print(restartInfo)
  pauseProject()

  local prev_active = editors.active
  local traceback_editor = editors.new(1.0, 0.6)
  editors.active = prev_active or editors.active
  traceback_editor:setText(wrap(restartInfo))
  traceback_editor.transform:translate(-1,0,0)
  traceback_editor.transform:rotate(-math.rad(40), 0,1,0)
  return lovr.run()
end
