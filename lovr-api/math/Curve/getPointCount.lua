return {
  summary = 'Get the number of control points in the Curve.',
  description = [[
    Returns the number of control points in the Curve.
  ]],
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of control points.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Curve:getPoint',
    'Curve:setPoint',
    'Curve:addPoint',
    'Curve:removePoint'
  }
}
