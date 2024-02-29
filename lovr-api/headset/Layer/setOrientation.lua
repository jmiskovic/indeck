return {
  summary = 'Set the orientation of the layer.',
  description = 'Sets the orientation of the layer.',
  arguments = {
    angle = {
      type = 'number',
      description = 'The amount of rotation around the axis of rotation, in radians.'
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
    orientation = {
      type = 'Quat',
      description = 'The orientation of the layer.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      arguments = { 'orientation' },
      returns = {}
    }
  },
  related = {
    'Layer:getPosition',
    'Layer:setPosition',
    'Layer:getPose',
    'Layer:setPose'
  }
}
