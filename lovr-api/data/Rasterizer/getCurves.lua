return {
  summary = 'Get the bezier curves defining a glyph.',
  description = 'Returns the bezier curve control points defining the shape of a glyph.',
  arguments = {
    character = {
      type = 'string',
      description = 'A character.'
    },
    codepoint = {
      type = 'number',
      description = 'A codepoint.'
    },
    three = {
      type = 'boolean',
      description = 'Whether the control points should be 3D or 2D.'
    }
  },
  returns = {
    curves = {
      type = 'table',
      description = [[
        A table of curves.  Each curve is a table of numbers representing the control points (2 for
        a line, 3 for a quadratic curve, etc.).
      ]]
    }
  },
  variants = {
    {
      arguments = { 'character', 'three' },
      returns = { 'curves' }
    },
    {
      arguments = { 'codepoint', 'three' },
      returns = { 'curves' }
    }
  },
  related = {
    'Curve',
    'Rasterizer:newImage'
  }
}
