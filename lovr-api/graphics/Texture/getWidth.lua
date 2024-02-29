return {
  tag = 'texture-metadata',
  summary = 'Get the width of the Texture, in pixels.',
  description = 'Returns the width of the Texture, in pixels.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Texture, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'Texture:getHeight',
    'Texture:getLayerCount',
    'Texture:getDimensions'
  }
}
