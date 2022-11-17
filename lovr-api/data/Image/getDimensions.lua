return {
  summary = 'Get the dimensions of the Image.',
  description = 'Returns the dimensions of the Image, in pixels.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Image, in pixels.'
    },
    height = {
      type = 'number',
      description = 'The height of the Image, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height' }
    }
  },
  related = {
    'Image:getWidth',
    'Image:getHeight',
    'Texture:getDimensions'
  }
}
