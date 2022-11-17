return {
  summary = 'Get the ascent of the font.',
  description = [[
    Returns the ascent metric of the font, in pixels.  The ascent represents how far any glyph of
    the font ascends above the baseline.
  ]],
  arguments = {},
  returns = {
    ascent = {
      type = 'number',
      description = 'The ascent of the font, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'ascent' }
    }
  },
  related = {
    'Rasterizer:getDescent',
    'Font:getAscent'
  }
}
