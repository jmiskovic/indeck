return {
  summary = 'Get the height of the model.',
  description = 'Returns the height of the model, computed from its axis-aligned bounding box.',
  arguments = {},
  returns = {
    height = {
      type = 'number',
      description = 'The height of the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getDepth',
    'ModelData:getDimensions',
    'ModelData:getCenter',
    'ModelData:getBoundingBox',
    'Model:getHeight'
  }
}
