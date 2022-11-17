return {
  tag = 'pipeline',
  summary = 'Set the viewport.',
  description = [[
    Sets the viewport.  Everything rendered will get mapped to the rectangle defined by the
    viewport.  More specifically, this defines the transformation from normalized device coordinates
    to pixel coordinates.
  ]],
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the upper-left corner of the viewport.',
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the upper-left corner of the viewport.',
    },
    w = {
      type = 'number',
      description = 'The width of the viewport.',
    },
    h = {
      type = 'number',
      description = 'The height of the viewport.  May be negative.',
    },
    dmin = {
      type = 'number',
      default = '0.0',
      description = 'The min component of the depth range.'
    },
    dmax = {
      type = 'number',
      default = '1.0',
      description = 'The max component of the depth range.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'w', 'h', 'dmin', 'dmax' },
      returns = {}
    }
  },
  notes = [[
    The viewport rectangle can use floating point numbers.

    A negative viewport height (with a y coordinate equal to the bottom of the viewport) can be used
    to flip the rendering vertically.

    The default viewport extends from `(0, 0)` to the dimensions of the target textures, with min
    depth and max depth respectively set to 0 and 1.
  ]],
  related = {
    'Pass:setScissor',
    'Pass:getDimensions'
  }
}
