return {
  summary = 'Get the size of the font.',
  description = [[
    Returns the size of the font, in pixels.  This is the size the rasterizer was created with, and
    defines the size of images it rasterizes.
  ]],
  arguments = {},
  returns = {
    size = {
      type = 'number',
      description = 'The font size, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'size' }
    }
  },
  related = {
    'Rasterizer:getHeight'
  }
}
