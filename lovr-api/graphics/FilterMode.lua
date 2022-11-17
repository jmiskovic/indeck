return {
  summary = 'Different ways to smooth textures.',
  description = 'Controls how `Sampler` objects smooth pixels in textures.',
  values = {
    {
      name = 'nearest',
      description = 'A pixelated appearance where the "nearest neighbor" pixel is used.'
    },
    {
      name = 'linear',
      description = 'A smooth appearance where neighboring pixels are averaged.'
    }
  },
  related = {
    'Pass:blit'
  }
}
