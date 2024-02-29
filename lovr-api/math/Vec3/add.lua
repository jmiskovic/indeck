return {
  summary = 'Add a vector or a number to the vector.',
  description = 'Adds a vector or a number to the vector.',
  arguments = {
    u = {
      type = 'Vec3',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'A value to add to x component.'
    },
    y = {
      type = 'number',
      default = 'x',
      description = 'A value to add to y component.'
    },
    z = {
      type = 'number',
      default = 'x',
      description = 'A value to add to z component.'
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
    'Vec3:sub',
    'Vec3:mul',
    'Vec3:div'
  }
}
