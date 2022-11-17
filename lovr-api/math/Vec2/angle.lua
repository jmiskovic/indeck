return {
  summary = 'Get the angle to another vector.',
  description = 'Returns the angle between vectors.',
  arguments = {
    u = {
      type = 'Vec2',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'The x component of the other vector.'
    },
    y = {
      type = 'number',
      description = 'The y component of the other vector.'
    }
  },
  returns = {
    angle = {
      type = 'number',
      description = 'The angle to the other vector, in radians.'
    },
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'angle' }
    },
    {
      arguments = { 'x', 'y' },
      returns = { 'angle' }
    }
  },
  notes = [[
    If any of the two vectors have a length of zero, the angle between them is not well defined.  In
    this case the function returns `math.pi / 2`.
  ]],
  related = {
    'Vec2:distance',
    'Vec2:length'
  }
}
