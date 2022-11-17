return {
  tag = 'pipeline',
  summary = 'Set the winding direction of triangle vertices.',
  description = [[
    Sets whether vertices in the clockwise or counterclockwise order vertices are considered the
    "front" face of a triangle.  This is used for culling with `Pass:setCullMode`.
  ]],
  arguments = {
    winding = {
      type = 'Winding',
      description = 'Whether triangle vertices are ordered `clockwise` or `counterclockwise`.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'winding' },
      returns = {}
    }
  },
  notes = [[
    The default winding is counterclockwise.  LÖVR's builtin shapes are wound counterclockwise.
  ]],
  related = {
    'Pass:setCullMode'
  }
}
