return {
  summary = 'Get the scale factor of the matrix.',
  description = 'Returns the scale factor of the matrix.',
  arguments = {},
  returns = {
    sx = {
      type = 'number',
      description = 'The x scale.'
    },
    sy = {
      type = 'number',
      description = 'The y scale.'
    },
    sz = {
      type = 'number',
      description = 'The z scale.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'sx', 'sy', 'sz' }
    }
  },
  related = {
    'Mat4:getPosition',
    'Mat4:getOrientation',
    'Mat4:getPose',
    'Mat4:unpack',
    'Mat4:set'
  }
}
