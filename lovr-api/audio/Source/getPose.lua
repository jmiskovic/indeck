return {
  tag = 'sourceEffects',
  summary = 'Get the pose of the Source.',
  description = 'Returns the position and orientation of the Source.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the Source, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the Source, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the Source, in meters.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the Source is rotated around its axis of rotation.'
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
    'Source:getPosition',
    'Source:getOrientation',
    'lovr.audio.getPose'
  }
}
