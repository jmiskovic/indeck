return {
  summary = 'Get the leading of the font.',
  description = [[
    Returns the leading metric of the font, in pixels.  This is the full amount of space between
    lines.
  ]],
  arguments = {},
  returns = {
    leading = {
      type = 'number',
      description = 'The font leading, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'leading' }
    }
  },
  related = {
    'Rasterizer:getAscent',
    'Rasterizer:getDescent'
  }
}
