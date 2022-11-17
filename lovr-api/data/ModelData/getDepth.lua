return {
  summary = 'Get the depth of the model.',
  description = 'Returns the depth of the model, computed from its axis-aligned bounding box.',
  arguments = {},
  returns = {
    depth = {
      type = 'number',
      description = 'The depth of the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'depth' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getHeight',
    'ModelData:getDimensions',
    'ModelData:getCenter',
    'ModelData:getBoundingBox',
    'Model:getDepth'
  }
}
