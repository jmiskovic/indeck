return {
  summary = 'Get a list of points on the Curve.',
  description = [[
    Returns a list of points on the Curve.  The number of points can be specified to get a more or
    less detailed representation, and it is also possible to render a subsection of the Curve.
  ]],
  arguments = {
    n = {
      type = 'number',
      default = '32',
      description = 'The number of points to use.'
    },
    t1 = {
      type = 'number',
      default = '0',
      description = 'How far along the curve to start rendering.'
    },
    t2 = {
      type = 'number',
      default = '1',
      description = 'How far along the curve to stop rendering.'
    }
  },
  returns = {
    t = {
      type = 'table',
      description = 'A (flat) table of 3D points along the curve.'
    }
  },
  variants = {
    {
      arguments = { 'n', 't1', 't2' },
      returns = { 't' }
    }
  },
  notes = [[
    This function will always return 2 points if the Curve is a line with only 2 control points.
  ]],
  related = {
    'Curve:evaluate',
    'Curve:slice',
    'Pass:points',
    'Pass:line',
    'Pass:mesh'
  }
}
