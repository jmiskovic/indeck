return {
  summary = 'Subtract a vector or a number from the vector.',
  description = 'Subtracts a vector or a number from the vector.',
  arguments = {
    u = {
      type = 'Vec4',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'A value to subtract from x component.'
    },
    y = {
      type = 'number',
      default = 'x',
      description = 'A value to subtract from y component.'
    },
    z = {
      type = 'number',
      default = 'x',
      description = 'A value to subtract from z component.'
    },
    w = {
      type = 'number',
      default = 'x',
      description = 'A value to subtract from w component.'
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
    'Vec4:add',
    'Vec4:mul',
    'Vec4:div'
  }
}
