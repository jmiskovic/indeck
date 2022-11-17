return {
  summary = 'Get the number of textures in the Model.',
  description = 'Returns the number of textures in the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of textures in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Model:getTexture'
  }
}
