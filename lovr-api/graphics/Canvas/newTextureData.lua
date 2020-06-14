return {
  summary = 'Create a new TextureData from a Canvas texture.',
  description = [[
    Returns a new TextureData containing the contents of a Texture attached to the Canvas.
  ]],
  arguments = {
    {
      name = 'index',
      type = 'number',
      default = '1',
      description = 'The index of the Texture to read from.'
    }
  },
  returns = {
    {
      name = 'textureData',
      type = 'TextureData',
      description = 'The new TextureData.'
    }
  },
  related = {
    'lovr.data.newTextureData',
    'TextureData'
  }
}
