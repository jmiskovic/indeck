return {
  summary = 'Get the number of meshes in the Model.',
  description = 'Returns the number of meshes in the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of meshes in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Model:getMesh'
  }
}
