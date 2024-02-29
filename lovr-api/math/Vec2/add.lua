return {
  summary = 'Add a vector or a number to the vector.',
  description = 'Adds a vector or a number to the vector.',
  arguments = {
    u = {
      type = 'Vec2',
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
    }
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
    'Vec2:sub',
    'Vec2:mul',
    'Vec2:div'
  }
}
