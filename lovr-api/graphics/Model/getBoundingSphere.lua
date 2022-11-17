return {
  summary = 'Get the bounding sphere of the Model.',
  description = 'Returns a sphere approximately enclosing the vertices in the Model.',
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
    'Model:getWidth',
    'Model:getHeight',
    'Model:getDepth',
    'Model:getDimensions',
    'Model:getCenter',
    'Model:getBoundingBox',
    'ModelData:getBoundingSphere'
  }
}
