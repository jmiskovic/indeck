return {
  summary = 'Get the center of the model\'s bounding box.',
  description = [[
    Returns the center of the model's axis-aligned bounding box, relative to the model's origin.
  ]],
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x offset of the center of the bounding box.'
    },
    y = {
      type = 'number',
      description = 'The y offset of the center of the bounding box.'
    },
    z = {
      type = 'number',
      description = 'The z offset of the center of the bounding box.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getHeight',
    'ModelData:getDepth',
    'ModelData:getDimensions',
    'ModelData:getBoundingBox',
    'Model:getCenter'
  }
}
