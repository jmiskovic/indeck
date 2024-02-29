return {
  summary = 'Get the translation of the matrix.',
  description = 'Returns the translation of the matrix.  This is the last column of the matrix.',
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
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Mat4:getOrientation',
    'Mat4:getScale',
    'Mat4:getPose',
    'Mat4:unpack',
    'Mat4:set'
  }
}
