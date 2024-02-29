return {
  summary = 'Get the angle/axis rotation of the matrix.',
  description = 'Returns the angle/axis rotation of the matrix.',
  arguments = {},
  returns = {
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
      returns = { 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'Mat4:getPosition',
    'Mat4:getScale',
    'Mat4:getPose',
    'Mat4:unpack',
    'Mat4:set'
  }
}
