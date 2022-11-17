return {
  summary = 'Get the height of the Texture, in pixels.',
  description = 'Returns the height of the Texture, in pixels.',
  arguments = {},
  returns = {
    height = {
      type = 'number',
      description = 'The height of the Texture, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  related = {
    'Texture:getWidth',
    'Texture:getLayerCount',
    'Texture:getDimensions'
  }
}
