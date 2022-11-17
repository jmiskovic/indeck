return {
  summary = 'Get the height of the Font.',
  description = [[
    Returns the height of the font, sometimes also called the leading.  This is the full height of a
    line of text, including the space between lines.  Each line of a multiline string is separated
    on the y axis by this height, multiplied by the font's line spacing.  The units depend on the
    font's pixel density.  With the default density, the units correspond to meters.
  ]],
  arguments = {},
  returns = {
    height = {
      type = 'number',
      description = 'The height of the font.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  related = {
    'Rasterizer:getLeading',
    'Font:getLineSpacing',
    'Font:setLineSpacing',
    'Font:getAscent',
    'Font:getDescent',
    'Font:getKerning',
    'Font:getWidth',
    'Font:getLines'
  }
}
