return {
  summary = 'Get the pose of the layer.',
  description = 'Returns the position and orientation of the layer.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x position.'
    },
    y = {
      type = 'number',
      description = 'The y position.'
    },
    z = {
      type = 'number',
      description = 'The z position.'
    },
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
      returns = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' }
    }
  },
  notes = 'Units are in meters.',
  related = {
    'Layer:getPosition',
    'Layer:setPosition',
    'Layer:getOrientation',
    'Layer:setOrientation'
  }
}
