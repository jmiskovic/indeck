return {
  tag = 'vectors',
  summary = 'Create a temporary Mat4.',
  description = [[
    Creates a temporary 4D matrix.  This function takes the same arguments as `Mat4:set`.
  ]],
  arguments = {
    d = {
      type = 'number',
      description = 'A number to use for the diagonal elements.'
    },
    n = {
      type = 'Mat4',
      description = 'An existing matrix to copy the values from.'
    },
    position = {
      type = 'Vec3',
      default = '0, 0, 0',
      description = 'The translation of the matrix.'
    },
    scale = {
      type = 'Vec3',
      default = '1, 1, 1',
      description = 'The scale of the matrix.'
    },
    rotation = {
      type = 'Quat',
      default = '0, 0, 0, 1',
      description = 'The rotation of the matrix.'
    },
    ['...'] = {
      type = 'number',
      description = '16 numbers to use as the raw values of the matrix (column-major).'
    }
  },
  returns = {
    m = {
      type = 'Mat4',
      description = 'The new matrix.'
    }
  },
  variants = {
    {
      description = 'Sets the matrix to the identity matrix.',
      arguments = {},
      returns = { 'm' }
    },
    {
      description = 'Copies the values from an existing matrix.',
      arguments = { 'n' },
      returns = { 'm' }
    },
    {
      arguments = { 'position', 'scale', 'rotation' },
      returns = { 'm' }
    },
    {
      arguments = { 'position', 'rotation' },
      returns = { 'm' }
    },
    {
      arguments = { '...' },
      returns = { 'm' }
    },
    {
      description = 'Sets the diagonal values to a number and everything else to 0.',
      arguments = { 'd' },
      returns = { 'm' }
    }
  },
  related = {
    'lovr.math.newMat4',
    'Mat4',
    'Vectors'
  }
}
