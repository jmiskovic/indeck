return {
  summary = 'Different ways to wrap textures.',
  description = 'Controls how `Sampler` objects wrap textures.',
  values = {
    {
      name = 'clamp',
      description = [[
        Pixels will be clamped to the edge, with pixels outside the 0-1 uv range using colors from
        the nearest edge.
      ]]
    },
    {
      name = 'repeat',
      description = 'Tiles the texture.'
    }
  }
}
