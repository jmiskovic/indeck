return {
  summary = 'Get the name of a material in the model.',
  description = 'Returns the name of a material in the model.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a material.'
    }
  },
  returns = {
    name = {
      type = 'string',
      description = 'The name of the material, or nil if the material does not have a name.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'name' }
    }
  },
  related = {
    'ModelData:getMaterialCount',
    'ModelData:getMeshMaterial',
    'ModelData:getMaterial',
    'Model:getMaterialName'
  }
}
