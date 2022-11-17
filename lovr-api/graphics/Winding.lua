return {
  summary = 'Different triangle windings.',
  description = [[
    Indicates whether the front face of a triangle uses the clockwise or counterclockwise vertex
    order.
  ]],
  values = {
    {
      name = 'clockwise',
      description = 'Clockwise winding.'
    },
    {
      name = 'counterclockwise',
      description = 'Counterclockwise winding.'
    }
  },
  related = {
    'Pass:setWinding',
    'Pass:setCullMode'
  }
}
