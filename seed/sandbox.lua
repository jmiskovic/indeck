local m = {}

function m.load()
end

function m.update(dt)
end

function m.draw()
  -- draw ground and 12 rotating blocks around world origin
  lovr.graphics.setColor(0x243f26)
  lovr.graphics.cylinder(0,-1,0,  2,  math.pi/2,  1,0,0,  2)
  lovr.graphics.setColor(0xcf9733)
  for angle = 0, math.pi * 2, math.pi / 6 do
    local pose = mat4() 
    pose:rotate(angle + lovr.timer.getTime() / 10,  0,1,0) -- rotate over Y axis
    pose:translate(0, 1, -2)  -- move away from origin
    pose:scale(0.8, 0.3, 0.1) -- block size
    lovr.graphics.box('fill', pose)
  end
  -- draw blocks synced to hand controllers
  lovr.graphics.setColor(0xd2b793)
  for _, handName in ipairs(lovr.headset.getHands()) do
    local handPose = mat4(lovr.headset.getPose(handName))
    handPose:scale(0.04, 0.08, 0.08)
    lovr.graphics.box('fill', handPose)
  end
end

return m
