return {
  summary = 'Get the dimensions of the Model.',
  description = [[
    Returns the width, height, and depth of the Model, computed from its axis-aligned bounding box.
  ]],
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the Model.'
    },
    height = {
      type = 'number',
      description = 'The height of the Model.'
    },
    depth = {
      type = 'number',
      description = 'The depth of the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height', 'depth' }
    }
  },
  related = {
    'Model:getWidth',
    'Model:getHeight',
    'Model:getDepth',
    'Model:getCenter',
    'Model:getBoundingBox',
    'ModelData:getDimensions'
  }
}
