return {
  summary = 'Divides the vector by a vector or a number.',
  description = 'Divides the vector by a vector or a number.',
  arguments = {
    u = {
      type = 'Vec3',
      description = 'The other vector to divide the components by.'
    },
    x = {
      type = 'number',
      description = 'A value to divide x component by.'
    },
    y = {
      type = 'number',
      default = 'x',
      description = 'A value to divide y component by.'
    },
    z = {
      type = 'number',
      default = 'x',
      description = 'A value to divide z component by.'
    }
  },
  returns = {
    self = {
      type = 'Vec3',
      description = 'The modified vector.'
    }
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'self' }
    }
  },
  related = {
    'Vec3:add',
    'Vec3:sub',
    'Vec3:mul'
  }
}
