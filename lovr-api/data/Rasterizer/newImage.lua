return {
  summary = 'Get an Image of a rasterized glyph.',
  description = 'Returns an `Image` containing a rasterized glyph.',
  arguments = {
    character = {
      type = 'string',
      description = 'A character.'
    },
    codepoint = {
      type = 'number',
      description = 'A codepoint.'
    },
    spread = {
      type = 'number',
      default = '4.0',
      description = 'The width of the distance field, for signed distance field rasterization.'
    },
    padding = {
      type = 'number',
      default = 'spread / 2',
      description = 'The number of pixels of padding to add at the edges of the image.'
    }
  },
  returns = {
    image = {
      type = 'Image',
      description = 'The glyph image.  It will be in the `rgba32f` format.'
    }
  },
  variants = {
    {
      arguments = { 'character', 'spread', 'padding' },
      returns = { 'image' }
    },
    {
      arguments = { 'codepoint', 'spread', 'padding' },
      returns = { 'image' }
    }
  },
  related = {
    'Rasterizer:getCurves'
  }
}
