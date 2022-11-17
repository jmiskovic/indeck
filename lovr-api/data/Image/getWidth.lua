return {
  summary = 'Get the width of the Image.',
  description = 'Returns the width of the Image, in pixels.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Image, in pixels.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'Image:getHeight',
    'Image:getDimensions',
    'Texture:getWidth'
  }
}
