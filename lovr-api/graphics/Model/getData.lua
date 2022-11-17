return {
  summary = 'Get the ModelData backing the Model.',
  description = 'Returns the ModelData this Model was created from.',
  arguments = {},
  returns = {
    data = {
      type = 'ModelData',
      description = 'The ModelData.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  },
  related = {
    'lovr.data.newModelData'
  }
}
