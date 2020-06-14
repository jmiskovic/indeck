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
      description = 'A number to subtract from each component.'
    }
  },
  returns = {
    v = {
      type = 'Vec2',
      description = 'The original vector.'
    }
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'v' }
    },
    {
      arguments = { 'x' },
      returns = { 'v' }
    }
  },
  related = {
    'Vec2:add',
    'Vec2:mul',
    'Vec2:div'
  }
}
