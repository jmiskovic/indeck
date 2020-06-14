return {
  summary = 'Get the dimensions of the TextureData.',
  description = 'Returns the dimensions of the TextureData, in pixels.',
  arguments = {},
  returns = {
    {
      name = 'width',
      type = 'number',
      description = 'The width of the TextureData, in pixels.'
    },
    {
      name = 'height',
      type = 'number',
      description = 'The height of the TextureData, in pixels.'
    }
  },
  related = {
    'TextureData:getWidth',
    'TextureData:getHeight',
    'Texture:getDimensions'
  }
}
