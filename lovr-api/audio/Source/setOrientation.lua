return {
  tag = 'sourceEffects',
  summary = 'Set the orientation of the Source.',
  description = 'Sets the orientation of the Source in angle/axis representation.',
  arguments = {
    angle = {
      type = 'number',
      description = 'The number of radians the Source should be rotated around its rotation axis.'
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
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    }
  },
  related = {
    'Source:setPosition',
    'Source:setPose',
    'lovr.audio.setOrientation'
  }
}
