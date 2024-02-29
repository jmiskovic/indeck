return {
  tag = 'texture-metadata',
  summary = 'Get the format of the Texture.',
  description = 'Returns the format of the texture.',
  arguments = {},
  returns = {
    format = {
      type = 'TextureFormat',
      description = 'The format of the Texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'format' }
    }
  }
}
