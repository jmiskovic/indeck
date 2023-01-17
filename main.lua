local editors = require'editors'
local modifiers = {ctrl = false, alt = false, shift = false}
local mounted_project
local errhand

-- PUC Lua 5.1 doesn't support function arguments in xpcall
local xpacall = function(fn, err, ...)
  local args = {...}
  return xpcall(function() return fn(unpack(args)) end, err)
end


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
  }
  package.loaded['main'] = nil
  -- loading user project will overwrite some of indeck's callbacks
  xpacall(require, errhand, 'main')
  -- reinstate indeck's callbacks store the user project callbacks for event forwarding
  for _, fname in ipairs({'draw', 'update', 'keypressed', 'keyreleased', 'textinput'}) do
    if stored[fname] ~= lovr[fname] then
      lovr[fname], callbacks[fname] = stored[fname], lovr[fname]  -- the switch
    end
  end
  if stored.load ~= lovr.load then -- call user's load() once and forget about it
    xpacall(lovr.load, errhand)
  end
end


local function pauseProject()
  print('pausing project')
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
  local full_path = lovr.filesystem.getSaveDirectory() .. '/projects/' .. project_dir
  print('loading user project', full_path)
  local success = lovr.filesystem.mount(full_path, '', false)
  if not success then
    print('! unsucessful; does project dir exist?')
    return
  end
  mounted_project = full_path
  runProject()
  -- open project's main.lua in active editor
  local path_to_main = 'projects/' .. project_dir .. '/main.lua'
  if lovr.filesystem.isFile(path_to_main) and editors.active then
    editors.active:openFile(path_to_main)
  else
    print(lovr.filesystem.isFile(path_to_main), path_to_main)
  end
end


function lovr.load()
  if lovr.headset then lovr.headset.update() end
  lovr.filesystem.unmount(lovr.filesystem.getSource())
  lovr.filesystem.mount('lovr-api', 'help')
  local editor = editors.new(120, 60, switchToProject)
  editor:listFiles('')
end


function lovr.update(dt)
  xpacall(callbacks.update, errhand, dt)
end


function lovr.draw(pass)
  -- main pass rendering
  for _, editor in ipairs(editors) do
    editor:draw(pass)
  end
  pass:setColor(1,1,1)
  local _, skip = xpacall(callbacks.draw, errhand, pass)
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
    local editor = editors.new(120, 60, switchToProject)
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
  xpacall(callbacks.keypressed, errhand, key, scancode, isrepeat, combo)
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

  xpacall(callbacks.keyreleased, errhand, key, scancode)
end


function lovr.textinput(k)
  if k:match('[^\n]') then
    editors.textinput(k)
  end
  xpacall(callbacks.textinput, errhand, k)
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



local function showStackTrace(info)
  local prev_active = editors.active
  local traceback_editor = editors.new(60, 30)
  editors.active = prev_active or editors.active
  traceback_editor:setText(wrap(info, traceback_editor.cols))
  traceback_editor.transform:translate(-1,0,-0.4)
  traceback_editor.transform:rotate(-math.rad(40), 0,1,0)
end


local function continueRunning()
  if lovr.event then
    lovr.event.pump()
    for name, a, b, c, d in lovr.event.poll() do
      if name == 'restart' then
        local cookie = lovr.restart and lovr.restart()
        return 'restart', cookie
      elseif name == 'quit' and (not lovr.quit or not lovr.quit(a)) then
        return a or 0
      end
      if lovr.handlers[name] then lovr.handlers[name](a, b, c, d) end
    end
  end
  local dt = 0
  if lovr.timer then dt = lovr.timer.step() end
  if lovr.headset then dt = lovr.headset.update() end
  if lovr.update then lovr.update(dt) end
  if lovr.graphics then
    if lovr.headset then
      local pass = lovr.headset.getPass()
      if pass then
        local skip = lovr.draw and lovr.draw(pass)
        if not skip then lovr.graphics.submit(pass) end
      end
    end
    if lovr.system.isWindowOpen() then
      if lovr.mirror then
        local pass = lovr.graphics.getWindowPass()
        local skip = not pass or lovr.mirror(pass)
        if not skip then lovr.graphics.submit(pass) end
      end
      lovr.graphics.present()
    end
  end
  if lovr.headset then lovr.headset.submit() end
  if lovr.math then lovr.math.drain() end
end

errhand = function(message, traceback)
  traceback = traceback or debug.traceback('', 3)
  local error_message = message .. '\n' .. traceback
  print('! runtime error')
  print(error_message)
  pauseProject()

  showStackTrace(error_message)
  return continueRunning
end
