return {
  tag = 'listener',
  summary = 'Get the pose of the listener.',
  description = 'Returns the position and orientation of the virtual audio listener.',
  arguments = {},
  returns = {
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
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'lovr.audio.getPosition',
    'lovr.audio.getOrientation',
    'Source:getPose'
  }
}
