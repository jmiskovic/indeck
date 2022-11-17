return {
  summary = 'Get one of the textures in the Model.',
  description = 'Returns one of the textures in the Model.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the texture to get.'
    }
  },
  returns = {
    texture = {
      type = 'Texture',
      description = 'The texture.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'texture' }
    }
  },
  related = {
    'Model:getTextureCount',
    'Model:getMaterial'
  }
}
