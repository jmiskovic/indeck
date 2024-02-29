return {
  summary = 'Get the orientation of the layer.',
  description = 'Returns the orientation of the layer.',
  arguments = {},
  returns = {
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
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'Layer:getPosition',
    'Layer:setPosition',
    'Layer:getPose',
    'Layer:setPose'
  }
}
