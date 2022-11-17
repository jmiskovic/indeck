return {
  tag = 'listener',
  summary = 'Set the pose of the listener.',
  description = 'Sets the position and orientation of the virtual audio listener.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the listener, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the listener, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the listener, in meters.'
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
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    }
  },
  related = {
    'lovr.audio.setPosition',
    'lovr.audio.setOrientation',
    'Source:setPose'
  }
}
