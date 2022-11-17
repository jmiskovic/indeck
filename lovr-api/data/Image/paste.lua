return {
  summary = 'Copy pixels from another Image to this one.',
  description = 'Copies a rectangle of pixels from one Image to this one.',
  arguments = {
    source = {
      type = 'Image',
      description = 'The Image to copy pixels from.'
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate to paste to (0-indexed).',
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate to paste to (0-indexed).',
    },
    fromX = {
      type = 'number',
      default = '0',
      description = 'The x coordinate in the source to paste from (0-indexed).',
    },
    fromY = {
      type = 'number',
      default = '0',
      description = 'The y coordinate in the source to paste from (0-indexed).',
    },
    width = {
      type = 'number',
      default = 'source:getWidth()',
      description = 'The width of the region to copy.'
    },
    height = {
      type = 'number',
      default = 'source:getHeight()',
      description = 'The height of the region to copy.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'source', 'x', 'y', 'fromX', 'fromY', 'width', 'height' },
      returns = {}
    }
  },
  notes = [[
    The two Images must have the same pixel format.

    Compressed images cannot be copied.

    The rectangle cannot go outside the dimensions of the source or destination textures.
  ]],
  related = {
    'Image:getPixel',
    'Image:setPixel',
    'Pass:copy'
  }
}
