local editors = require'editors'
local lume = require'lume'

if lovr.getOS() == 'Android' then
  lovr.keyboard = require 'lovr-keyboard-android'
else
  lovr.keyboard = require 'lovr-keyboard'
end

local reloadables = {
  'playground'
}

local playground = require'playground'

function lovr.load()
  lovr.graphics.setBackgroundColor(.1,.1,.1)
  local editor = editors.new(0.2, 0.3)
  editor.pane.transform:set(-0.12,0,-0.3, 1,1,1,  .3, 0,1,0)
  editor:openFile('playground.lua')
  table.insert(editors, editor)
end

function lovr.update(dt)
  lovr.timer.sleep(0.01)
  for _, editor in ipairs(editors) do 
    editor:refresh()
  end
end

function lovr.draw()
  playground()
  for _, editor in ipairs(editors) do 
    editor:draw()
  end
end

function lovr.mirror()
  if false and lovr.headset then
    local texture = lovr.headset.getMirrorTexture()
    if texture then
      lovr.graphics.fill(texture)
    end
  else
    lovr.graphics.clear()
    lovr.draw()
  end
end

function lovr.keyboard.keypressed(k)
  if k == 'f5' then
    lovr.event.push('restart')
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
  if k == 'ctrl+r' then
    lume.hotswap('playground')
    print('reload', lume.hotswap('playground'))
    return
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
