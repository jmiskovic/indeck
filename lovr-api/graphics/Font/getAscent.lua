return {
  summary = 'Get the ascent of the Font.',
  description = [[
    Returns the ascent of the font.  The ascent is the maximum amount glyphs ascend above the
    baseline.  The units depend on the font's pixel density.  With the default density, the units
    correspond to meters.
  ]],
  arguments = {},
  returns = {
    ascent = {
      type = 'number',
      description = 'The ascent of the font.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'ascent' }
    }
  },
  related = {
    'Rasterizer:getAscent',
    'Font:getDescent',
    'Font:getHeight',
    'Font:getKerning',
    'Font:getWidth'
  }
}
