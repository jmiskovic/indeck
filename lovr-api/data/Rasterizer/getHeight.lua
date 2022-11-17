return {
  summary = 'Get the height of a glyph, or the font.',
  description = 'Returns the height of a glyph, or the maximum height of any glyph.',
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
    height = {
      type = 'number',
      description = 'The height, in pixels.'
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'height' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'height' }
    },
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  related = {
    'Rasterizer:getWidth',
    'Rasterizer:getDimensions',
    'Rasterizer:getBoundingBox'
  }
}
