return {
  summary = 'Get the bounding sphere of the model.',
  description = 'Returns a sphere approximately enclosing the vertices in the model.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x coordinate of the position of the sphere.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the position of the sphere.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the position of the sphere.'
    },
    radius = {
      type = 'number',
      description = 'The radius of the bounding sphere.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z', 'radius' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getHeight',
    'ModelData:getDepth',
    'ModelData:getDimensions',
    'ModelData:getCenter',
    'ModelData:getBoundingBox',
    'Model:getBoundingSphere'
  }
}
