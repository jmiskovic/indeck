return {
  summary = 'Get the number of meshes in the model.',
  description = 'Returns the number of meshes in the model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of meshes in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getNodeMeshes'
  }
}
