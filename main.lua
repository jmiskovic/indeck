if lovr.getOS() == 'Android' then
  lovr.keyboard = require 'lovr-keyboard-android'
else
  lovr.keyboard = require 'lovr-keyboard'
end
local editors = require'editors'
local playground = require'playground'

function lovr.load()
  editor = editors.new(0.8, 1)
  local pos = vec3(mat4(0,0,0, math.pi/6, 0,1,0):mul(0,1.5,-0.8))
  editor.pane.transform:lookAt(pos, vec3(0,1.5,0), vec3(0,1.7,0))
  editor.pane.transform:rotate(math.pi , 0,1,0)  editor:openFile('playground.lua')
end

function lovr.update(dt)
end

function lovr.draw()
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
    package.loaded.playground = nil
    playground = require('playground')
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
  for _, editor in ipairs(editors) do 
    editor:keypressed(k)
  end
end

function lovr.keyboard.textinput(k)
  for _, editor in ipairs(editors) do 
    editor:textinput(k)
  end
end
