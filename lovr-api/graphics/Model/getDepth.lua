return {
  summary = 'Get the depth of the Model.',
  description = 'Returns the depth of the Model, computed from its axis-aligned bounding box.',
  arguments = {},
  returns = {
    depth = {
      type = 'number',
      description = 'The depth of the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'depth' }
    }
  },
  related = {
    'Model:getWidth',
    'Model:getHeight',
    'Model:getDimensions',
    'Model:getCenter',
    'Model:getBoundingBox',
    'ModelData:getDepth'
  }
}
