local editors = require'editors'
local playground = require('playground')
if lovr.getOS() == 'Android' then
  lovr.keyboard = require 'lovr-keyboard-android'
else
  lovr.keyboard = require 'lovr-keyboard'
  function lovr.mirror()
    -- desktop hack to keep camera in place
    lovr.graphics.clear()
    lovr.draw()
  end
  function lovr.update(dt)
    lovr.timer.sleep(0.02)
  end
end


function lovr.load()
  editor = editors.new(0.8, 1)
  local x,y,z = lovr.headset.getPosition('head')
  editor:openFile('playground.lua')
  editor:center()
end


function lovr.draw()
  --lovr.graphics.translate(0.0, -.8, -0.1)
  --lovr.graphics.rotate(-math.pi/12, 0,1,0)
  for _, editor in ipairs(editors) do
    editor:draw()
  end
end

function lovr.keyboard.keypressed(k, combo)
  editors.active:keypressed(combo)
end

function lovr.keyboard.textinput(k)
  editors.active:textinput(k)
end
