return {
  tag = 'callbacks',
  summary = 'Called when the user recenters the coordinate space.',
  description = [[
    The `lovr.recenter` callback is called whenever the user performs a "recenter" gesture to
    realign the virtual coordinate space.  On most VR systems this will move the origin to the
    user's current position and rotate its yaw to match the view direction.  The y=0 position will
    always be on the floor or at eye level, depending on whether `t.headset.seated` was set in
    `lovr.conf`.
  ]],
  arguments = {},
  returns = {},
  notes = [[
    Note that the pose of the `floor` device will not always be at the origin of the coordinate
    space.  It uses a fixed position on the floor in the real world, usually the center of the
    configured play area.  This allows virtual objects to be positioned in a room without having
    them jump around after a recenter.
  ]],
  related = {
    'lovr.headset.getBoundsWidth',
    'lovr.headset.getBoundsDepth',
    'lovr.headset.getBoundsDimensions',
    'lovr.headset.getBoundsGeometry',
    'lovr.headset.isSeated'
  }
}
