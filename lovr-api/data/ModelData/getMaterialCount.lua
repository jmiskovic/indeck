return {
  summary = 'Get the number of materials in the model.',
  description = 'Returns the number of materials in the model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of materials in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getMaterialName',
    'ModelData:getMeshMaterial',
    'ModelData:getMaterial',
    'Model:getMaterialCount'
  }
}
