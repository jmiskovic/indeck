--[[

self:openFile('playgound.lua')
--]]
local editors = require'editors'
local playground = require('playground')
if lovr.getOS() == 'Android' then
  lovr.keyboard = require 'lovr-keyboard-android'
else
  lovr.keyboard = require 'lovr-keyboard'
  function lovr.mirror_() -- desktop hack to keep camera in place
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
  editor.pane.transform:lookAt(vec3(0, y, -1), vec3(x,y,z), vec3(0,1,0))
  editor:openFile('playground.lua')
end


function lovr.draw()
  --lovr.graphics.translate(0.0, -.8, -0.1)
  --lovr.graphics.rotate(-math.pi/12, 0,1,0)
  playground()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
end

function lovr.keyboard.keypressed(k)
  if k == 'f5' then
    lovr.event.push('restart')
    return
  end
  if k == 'f2' then
    editor:saveFile(editor.path)
    local importName = 'playground'
    package.loaded[importName] = nil
    playground = require(importName)
    return
  end
  -- order of prefixes: ctrl+alt+shift+K
  if lovr.keyboard.isDown('lshift') then
    k = 'shift+'.. k
  end
  if lovr.keyboard.isDown('lalt') then
    k = 'alt+'.. k
  end
  if lovr.keyboard.isDown('lctrl') then
    k = 'ctrl+'.. k
  end
  editors.active:keypressed(k)
end

function lovr.keyboard.textinput(k)
  editors.active:textinput(k)
end
