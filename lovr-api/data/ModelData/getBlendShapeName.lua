return {
  summary = 'Get the name of a blend shape in the model.',
  description = 'Returns the name of a blend shape in the model.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a blend shape.'
    }
  },
  returns = {
    name = {
      type = 'string',
      description = 'The name of the blend shape.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'name' }
    }
  },
  notes = 'This function will throw an error if the blend shape index is invalid.',
  related = {
    'ModelData:getBlendShapeCount',
    'Model:getBlendShapeName'
  }
}
