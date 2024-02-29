return {
  summary = 'Subtract a vector or a number from the vector.',
  description = 'Subtracts a vector or a number from the vector.',
  arguments = {
    u = {
      type = 'Vec2',
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
  },
  returns = {
    self = {
      type = 'Vec2',
      description = 'The modified vector.'
    }
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y' },
      returns = { 'self' }
    }
  },
  related = {
    'Vec2:add',
    'Vec2:mul',
    'Vec2:div'
  }
}
