return {
  summary = 'Get the number of glyphs stored in the font file.',
  description = 'Returns the number of glyphs stored in the font file.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of glyphs stored in the font file.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Rasterizer:hasGlyphs'
  }
}
