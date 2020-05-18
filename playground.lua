require'beam'
pane = require'panes'.new(.1, .1)

pane.transform:set(.1, 1.5, -.3, 	-math.pi/2, 	1, 0, 0)

local function draw()
	pane:draw(function()
  math.randomseed(1)
 	local t = lovr.timer.getTime()
		for x = -1, 1, .5 do
			for y = -1, 1, .5 do
    local shade = math.random() * .3 + .3
    lovr.graphics.setColor(shade, shade, shade)
				local origin = vec3(x, y, 0)
				h = 1 + math.sin(x + math.sin(y * t) + t)
				lovr.graphics.beam(origin, origin + vec3(0, 0, h), 0.16)
			end
		end
	end)
end

return draw