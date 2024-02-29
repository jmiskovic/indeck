return {
  summary = 'Get the position and rotation of the matrix.',
  description = 'Returns the position and rotation of the matrix.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x translation.'
    },
    y = {
      type = 'number',
      description = 'The y translation.'
    },
    z = {
      type = 'number',
      description = 'The z translation.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the matrix rotates around its rotation axis.'
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
    'Mat4:getPosition',
    'Mat4:getOrientation',
    'Mat4:getScale',
    'Mat4:unpack',
    'Mat4:set'
  }
}
