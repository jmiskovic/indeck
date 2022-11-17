return {
  tag = 'graphics-misc',
  summary = 'Check if a Texture format is supported.',
  description = 'Returns the type of operations the GPU supports for a texture format, if any.',
  arguments = {
    format = {
      type = 'TextureFormat',
      description = 'The texture format to query.'
    },
    ['...features'] = {
      type = 'TextureFeature',
      description = [[
        Zero or more features to check.  If no features are given, this function will return whether
        the GPU supports *any* feature for this format.  Otherwise, this function will only return
        true if *all* of the input features are supported.
      ]]
    }
  },
  returns = {
    supported = {
      type = 'boolean',
      description = 'Whether the GPU supports these operations for textures with this format.'
    }
  },
  variants = {
    {
      arguments = { 'format', '...features' },
      returns = { 'supported' }
    }
  },
  related = {
    'lovr.graphics.getDevice',
    'lovr.graphics.getFeatures',
    'lovr.graphics.getLimits'
  }
}
