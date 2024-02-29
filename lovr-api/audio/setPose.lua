return {
  tag = 'listener',
  summary = 'Set the pose of the listener.',
  description = 'Sets the position and orientation of the virtual audio listener.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the listener.'
    },
    y = {
      type = 'number',
      description = 'The y position of the listener.'
    },
    z = {
      type = 'number',
      description = 'The z position of the listener.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the listener is rotated around its axis of rotation.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis of rotation.'
    },
    position = {
      type = 'Vec3',
      description = 'The position of the listener.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the listener.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the pose of the listener using numbers.',
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Set the pose of the listener using vector types.',
      arguments = { 'position', 'orientation' },
      returns = {}
    }
  },
  notes = [[
    The position of the listener doesn't use any specific units, but usually they can be thought of
    as meters to match the headset module.
  ]],
  related = {
    'lovr.audio.setPosition',
    'lovr.audio.setOrientation',
    'Source:setPose'
  }
}
