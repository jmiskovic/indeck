return {
  summary = 'Get the dimensions of a glyph, or the font.',
  description = 'Returns the dimensions of a glyph, or the dimensions of any glyph.',
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
    width = {
      type = 'number',
      description = 'The width, in pixels.'
    },
    height = {
      type = 'number',
      description = 'The height, in pixels.'
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'width', 'height' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'width', 'height' }
    },
    {
      arguments = {},
      returns = { 'width', 'height' }
    }
  },
  related = {
    'Rasterizer:getWidth',
    'Rasterizer:getHeight',
    'Rasterizer:getBoundingBox'
  }
}
