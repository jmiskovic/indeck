return {
  summary = 'Get the width of the model.',
  description = 'Returns the width of the model, computed from its axis-aligned bounding box.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'ModelData:getHeight',
    'ModelData:getDepth',
    'ModelData:getDimensions',
    'ModelData:getCenter',
    'ModelData:getBoundingBox',
    'Model:getWidth'
  }
}
