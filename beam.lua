-- pole graphics primitive extends from origin and has lenght and direction of delta vector
lovr.graphics.pole = function(origin, delta, thickness, angle)
  local scale = (delta):length()
  local thickness = (thickness or 0.3) / scale
  lovr.graphics.push()
  lovr.graphics.translate(origin)
  lovr.graphics.rotate(math.atan2(-delta.x, -delta.z), 0,1,0)
  lovr.graphics.rotate(math.atan2(delta.y, delta.zx:length()), 1,0,0)
  lovr.graphics.scale(scale)
  lovr.graphics.box('fill',
    0, 0, -0.5,
    thickness, 1, thickness,
    math.pi/2, 1, 0, 0)
  lovr.graphics.pop()
end

-- beam graphics primitive spans between two points in space
lovr.graphics.beam = function(origin, destination, ...)
  local delta = destination - origin
  lovr.graphics.pole(origin, delta, ...)
end
