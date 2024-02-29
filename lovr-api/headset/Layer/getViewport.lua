return {
  summary = 'Get the viewport of the layer.',
  description = [[
    Returns the viewport of the layer.  The viewport is a 2D region of pixels that the layer will
    display within its plane.
  ]],
  arguments = {},
  returns = {
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
      description = 'The width of the viewport, in pixels.',
    },
    h = {
      type = 'number',
      description = 'The height of the viewport, in pixels.',
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'w', 'h' }
    }
  }
}
