return {
  tag = 'texture-metadata',
  summary = 'Get the dimensions of the Texture.',
  description = 'Returns the width, height, and depth of the Texture.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Texture.'
    },
    height = {
      type = 'number',
      description = 'The height of the Texture.'
    },
    layers = {
      type = 'number',
      description = 'The number of layers in the Texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height', 'layers' }
    }
  },
  related = {
    'Texture:getWidth',
    'Texture:getHeight',
    'Texture:getLayerCount'
  }
}
