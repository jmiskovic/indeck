--[[

self:openFile('playgound.lua')
--]]
pane = require'pane'.new(.1, .1, 'left')

pane.transform:set(.2, .15, -.6, 	math.pi, 	0,1,0)

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

-- pole primitive extends from origin and has lenght and direction of delta vector
lovr.graphics.pole = function(origin, delta, radiusStart, radiusEnd, sides)
  local radiusStart = radiusStart or 0.1
  local radiusEnd = radiusEnd or radiusStart
  local sides = sides or 5
  local orientation = quat(vec3(delta):normalize())
  local angle, ax,ay,az = orientation:unpack(false)
  angle = angle + math.pi
  lovr.graphics.cylinder(
    origin + delta:mul(0.5),
    delta:length() * 2,
    angle, ax,ay,az,
    radiusStart, radiusEnd, true, sides)
end

-- beam primitive is pole that spans between origin and destination
lovr.graphics.beam = function(origin, destination, ...)
  local delta = destination - origin
  lovr.graphics.pole(origin, delta, ...)
end

return draw