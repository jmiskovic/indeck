return {
  summary = 'Add a vector or a number to the vector.',
  description = 'Adds a vector or a number to the vector.',
  arguments = {
    u = {
      type = 'Vec4',
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
    },
    w = {
      type = 'number',
      default = 'x',
      description = 'A value to add to w component.'
    }
  },
  returns = {
    self = {
      type = 'Vec4',
      description = 'The modified vector.'
    }
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y', 'z', 'w' },
      returns = { 'self' }
    }
  },
  related = {
    'Vec4:sub',
    'Vec4:mul',
    'Vec4:div'
  }
}
