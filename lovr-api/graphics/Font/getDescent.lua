return {
  summary = 'Get the descent of the Font.',
  description = [[
    Returns the descent of the font.  The descent is the maximum amount glyphs descend below the
    baseline.  The units depend on the font's pixel density.  With the default density, the units
    correspond to meters.
  ]],
  arguments = {},
  returns = {
    descent = {
      type = 'number',
      description = 'The descent of the font.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'descent' }
    }
  },
  related = {
    'Rasterizer:getDescent',
    'Font:getAscent',
    'Font:getHeight',
    'Font:getKerning',
    'Font:getWidth'
  }
}
