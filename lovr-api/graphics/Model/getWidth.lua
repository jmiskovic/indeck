return {
  summary = 'Get the width of the Model.',
  description = 'Returns the width of the Model, computed from its axis-aligned bounding box.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'Model:getHeight',
    'Model:getDepth',
    'Model:getDimensions',
    'Model:getCenter',
    'Model:getBoundingBox',
    'ModelData:getWidth'
  }
}
