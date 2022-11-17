return {
  summary = 'Get the height of the Image.',
  description = 'Returns the height of the Image, in pixels.',
  arguments = {},
  returns = {
    height = {
      type = 'number',
      description = 'The height of the Image, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  related = {
    'Image:getWidth',
    'Image:getDimensions',
    'Texture:getHeight'
  }
}
