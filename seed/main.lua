function lovr.draw(pass)
  --error_me()
  -- draw ground and 12 rotating blocks around world origin
  pass:setColor(0x204316)
  pass:cylinder(mat4(0,-1,0):rotate(math.pi/2, 1,0,0))
  pass:setColor(0xcf9733)
  for angle = 0, math.pi * 2, math.pi / 6 do
    local pose = mat4()
    pose:rotate(angle + lovr.timer.getTime() / 10,  0,1,0) -- rotate over Y axis
    pose:translate(0, 1, -2)  -- move away from origin
    pose:scale(0.8, 0.3, 0.1) -- block size
    pass:box(pose)
  end
  -- draw blocks synced to hand controllers
  pass:setColor(0xd2b793)
  for _, handName in ipairs(lovr.headset and lovr.headset.getHands() or {}) do
    local skeleton = lovr.headset.getSkeleton(handName)
    if skeleton then
      for _, bone in ipairs(skeleton) do
        local x, y, z, r, angle, ax,ay,az = unpack(bone)
        pass:sphere(mat4(x, y, z, angle, ax,ay,az):scale(0.004, 0.002, 0.006))
      end
    else
      local handPose = mat4(lovr.headset.getPose(handName))
      handPose:scale(0.04, 0.08, 0.08)
      pass:box(handPose)
    end
  end
end
