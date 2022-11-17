return {
  summary = 'Get the dimensions of the model.',
  description = [[
    Returns the width, height, and depth of the model, computed from its axis-aligned bounding box.
  ]],
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the model.'
    },
    height = {
      type = 'number',
      description = 'The height of the model.'
    },
    depth = {
      type = 'number',
      description = 'The depth of the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height', 'depth' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getHeight',
    'ModelData:getDepth',
    'ModelData:getCenter',
    'ModelData:getBoundingBox',
    'Model:getDimensions'
  }
}
