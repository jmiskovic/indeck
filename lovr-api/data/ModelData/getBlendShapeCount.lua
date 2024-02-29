return {
  summary = 'Get the number of blend shapes in the model.',
  description = 'Returns the number of blend shapes in the model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of blend shapes in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getBlendShapeName',
    'Model:getBlendShapeCount'
  }
}
