return {
  summary = 'Get the bounding box of the Model.',
  description = 'Returns the 6 values of the Model\'s axis-aligned bounding box.',
  arguments = {},
  returns = {
    minx = {
      type = 'number',
      description = 'The minimum x coordinate of the vertices in the Model.'
    },
    maxx = {
      type = 'number',
      description = 'The maximum x coordinate of the vertices in the Model.'
    },
    miny = {
      type = 'number',
      description = 'The minimum y coordinate of the vertices in the Model.'
    },
    maxy = {
      type = 'number',
      description = 'The maximum y coordinate of the vertices in the Model.'
    },
    minz = {
      type = 'number',
      description = 'The minimum z coordinate of the vertices in the Model.'
    },
    maxz = {
      type = 'number',
      description = 'The maximum z coordinate of the vertices in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'minx', 'maxx', 'miny', 'maxy', 'minz', 'maxz' }
    }
  },
  related = {
    'Model:getWidth',
    'Model:getHeight',
    'Model:getDepth',
    'Model:getDimensions',
    'Model:getCenter',
    'Model:getBoundingSphere',
    'ModelData:getBoundingBox',
    'Collider:getAABB'
  }
}
