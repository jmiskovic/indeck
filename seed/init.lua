local editors = require'editors'
local physics = require'physics'

local projectName = 'demo_physics'

local editor

if lovr.getOS() == 'Android' then
  lovr.keyboard = require 'lovr-keyboard-android'
else
  lovr.keyboard = require 'lovr-keyboard'
  function lovr.mirror_()
    -- desktop hack to keep camera in place
    lovr.graphics.clear()
    lovr.draw()
  end
  function lovr.update(dt)
    lovr.timer.sleep(0.02)
  end
end


function lovr.load()
  editor = editors.new(1, 1)
  local x,y,z = lovr.headset.getPosition('head')
  editor.pane.transform:lookAt(vec3(0, y, -1), vec3(x,y,z))
  editor:openFile(projectName .. '.lua')
  require(projectName).load()
end

function lovr.update(dt)
  require(projectName).update(dt)
end

function lovr.draw()
  --lovr.graphics.translate(0.0, -.8, -0.1)
  --lovr.graphics.rotate(-math.pi/12, 0,1,0)
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  require(projectName).draw()
end

function lovr.keyboard.keypressed(k, combo)
  if k =='f2' or k =='media_play_pause' then 
    reloadCode()
    return
  end
  editors.active:keypressed(combo)
end

function lovr.keyboard.textinput(k)
  editors.active:textinput(k)
end

function reloadCode()
  editors.active:saveFile(editors.active.path)
  package.loaded[projectName] = nil
  local project = require(projectName)
  if project.load then project.load() end
  return
end