return {
  tag = 'sourceEffects',
  summary = 'Set the pose of the Source.',
  description = 'Sets the position and orientation of the Source.',
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    }
  },
  related = {
    'Source:setPosition',
    'Source:setOrientation',
    'lovr.audio.setPose'
  }
}
