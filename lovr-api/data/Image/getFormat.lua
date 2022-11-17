return {
  summary = 'Get the pixel format of the Image.',
  description = 'Returns the format of the Image.',
  arguments = {},
  returns = {
    format = {
      type = 'TextureFormat',
      description = 'The format of the pixels in the Image.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'format' }
    }
  },
  related = {
    'TextureFormat',
    'Texture:getFormat'
  }
}
