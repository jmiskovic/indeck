-- module catches execution errors and provides editing environment to fix them
-- it's possible to override this source (with same filename in save directory)
-- note that doing so can easily break the development environment

if not arg['restart'] then
  lovr.errhand = function(message, traceback)
    traceback = traceback or debug.traceback('', 3)
    restartInfo = message .. '\n' .. traceback
    print(restartInfo)
    return function()
      return 'restart', restartInfo
      -- on restart, restartInfo string will be injected into arg table under 'restart' key
    end
  end
  return false -- resume booting user project
end

-- recovery mode

local editors = require'editors'
local errorpane = require'errorpane'
lovr.keyboard = require 'lovr-keyboard'

function lovr.load()
  -- parse restart information
  local restartInfo = arg['restart']
  --error pane
local panes = require'pane'
  --errorpane.buffer:setText(restartInfo)
  --errorpane:refresh()
  -- editor
  local editor = editors.new(0.8, 1)
  editor.pane.transform:set(0,1.5,-1, 1,1,1, math.pi, 0,1,0)
  editor:refresh()
  lovr.graphics.setBackgroundColor(0x111E13)
  errorpane.init(1, 0.4, restartInfo .. '\n\nctrl+up/down  scroll up/down\nctrl+enter    jump to source')
  errorpane.pane.transform:set(0.7, 1.5, -0.4,  1,1,1,  2/3 * math.pi, 0,1,0)
  errorpane.jumpToSource()
end


function lovr.draw()
  for _, editor in ipairs(editors) do
    editor:draw()
  end
  errorpane.draw()
end

function lovr.keyboard.keypressed(k)
  if k == 'f5' then
    lovr.event.push('restart')
  end
  if k == 'escape' then
    lovr.event.push('quit')
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
  errorpane.keypressed(k)
end

function lovr.keyboard.textinput(k)
  editors.active:textinput(k)
end