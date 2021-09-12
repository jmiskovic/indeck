-- module catches execution errors and provides editing environment to fix them
-- it's possible to override this source (with same filename in save directory)
-- note that doing so can easily break the development environment

if not arg['restart'] then
  lovr.errhand = function(message, traceback)
    traceback = traceback or debug.traceback('', 3)
    local restartInfo = message .. '\n' .. traceback
    print(restartInfo)
    return function()
      return 'restart', restartInfo
      -- on restart, restartInfo string will be injected into arg table under 'restart' key
    end
  end
  lovr.event.pump()
  lovr.headset.update(0.1)
  local forceRecovery = lovr.headset.isDown('hand/right', 'grip')
  if not forceRecovery then
    return false -- resume booting user project
  end
end

-- application error detected -> enter the recovery mode

local modifiers = {ctrl = false, alt = false, shift = false}

-- unmount user save dir to make sure recovery versions are required, then remount to make sources available
lovr.filesystem.unmount(lovr.filesystem.getSaveDirectory())
local editors = require'editors'
local errorpane = require'errorpane'
lovr.filesystem.mount(lovr.filesystem.getSaveDirectory(), "", false)

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


function lovr.load()
  -- parse restart information
  local restartInfo = arg['restart'] or 'User-triggered recovery mode'
  -- editor
  local editor = editors.new(0.8, 1)
  editor.pane.transform:set(0,1.5,-1, 1,1,1, math.pi, 0,1,0)
  editor:refresh()
  lovr.graphics.setBackgroundColor(0x111E13)
  --error pane
  errorpane.init(0.6, 0.4, wrap(restartInfo) .. '\n\nctrl+up/down  scroll up/down\nctrl+enter    jump to source')
  errorpane.pane.transform:set(0.7, 1.5, -0.4,  1,1,1,  2/3 * math.pi, 0,1,0)
  errorpane.jumpToSource()
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  errorpane.draw()
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
  if combo == 'f5' or combo =='ctrl+shift+r' then
    lovr.event.push('restart')
  end
  if combo =='escape' then
    lovr.event.push('quit')
  end
  editors.keypressed(combo)
  errorpane.keypressed(combo)
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