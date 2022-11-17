return {
  tag = 'drawing',
  summary = 'Draw points.',
  description = 'Draws points.  `Pass:mesh` can also be used to draw points using a `Buffer`.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the first point.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the first point.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the first point.'
    },
    t = {
      type = 'table',
      description = 'A table of numbers or Vec3 objects (not both) representing point positions.'
    },
    v = {
      type = 'Vec3',
      description = 'A vector containing the position of the first point to draw.'
    },
    ['...'] = {
      type = '*',
      description = 'More points.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', '...' },
      returns = {}
    },
    {
      arguments = { 't' },
      returns = {}
    },
    {
      arguments = { 'v', '...' },
      returns = {}
    }
  },
  notes = [[
    To change the size of points, set the `pointSize` shader flag in `lovr.graphics.newShader` or
    write to the `PointSize` variable in the vertex shader.  Points are always the same size on the screen, regardless of distance, and the units are in pixels.
  ]]
}
