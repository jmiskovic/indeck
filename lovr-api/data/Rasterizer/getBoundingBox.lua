return {
  summary = 'Get the bounding box of a glyph, or the font.',
  description = [[
    Returns the bounding box of a glyph, or the bounding box surrounding all glyphs.  Note that font
    coordinates use a cartesian "y up" coordinate system.
  ]],
  arguments = {
    character = {
      type = 'string',
      description = 'A character.'
    },
    codepoint = {
      type = 'number',
      description = 'A codepoint.'
    }
  },
  returns = {
    x1 = {
      type = 'number',
      description = 'The left edge of the bounding box, in pixels.'
    },
    y1 = {
      type = 'number',
      description = 'The bottom edge of the bounding box, in pixels.'
    },
    x2 = {
      type = 'number',
      description = 'The right edge of the bounding box, in pixels.'
    },
    y2 = {
      type = 'number',
      description = 'The top edge of the bounding box, in pixels.'
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'x1', 'y1', 'x2', 'y2' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'x1', 'y1', 'x2', 'y2' }
    },
    {
      arguments = {},
      returns = { 'x1', 'y1', 'x2', 'y2' }
    }
  },
  related = {
    'Rasterizer:getWidth',
    'Rasterizer:getHeight',
    'Rasterizer:getDimensions'
  }
}
