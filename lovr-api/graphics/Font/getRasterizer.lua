return {
  summary = 'Get the Font\'s Rasterizer.',
  description = 'Returns the Rasterizer object backing the Font.',
  arguments = {},
  returns = {
    rasterizer = {
      type = 'Rasterizer',
      description = 'The Rasterizer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'rasterizer' }
    }
  },
  related = {
    'lovr.graphics.newFont',
    'lovr.data.newRasterizer'
  }
}
