return {
  summary = 'Get the width of a glyph, or the font.',
  description = 'Returns the width of a glyph, or the maximum width of any glyph.',
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
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'width' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'width' }
    },
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'Rasterizer:getHeight',
    'Rasterizer:getDimensions',
    'Rasterizer:getBoundingBox'
  }
}
