return {
  summary = 'Multiply the vector by a vector or a number.',
  description = 'Multiplies the vector by a vector or a number.',
  arguments = {
    u = {
      type = 'Vec2',
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
    'Vec2:add',
    'Vec2:sub',
    'Vec2:div'
  }
}
