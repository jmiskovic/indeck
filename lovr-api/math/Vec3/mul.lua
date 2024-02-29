return {
  summary = 'Multiply the vector by a vector or a number.',
  description = 'Multiplies the vector by a vector or a number.',
  arguments = {
    u = {
      type = 'Vec3',
      description = 'The other vector to multiply the components by.'
    },
    x = {
      type = 'number',
      description = 'A value to multiply x component by.'
    },
    y = {
      type = 'number',
      default = 'x',
      description = 'A value to multiply y component by.'
    },
    z = {
      type = 'number',
      default = 'x',
      description = 'A value to multiply z component by.'
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
    'Vec3:div'
  }
}
