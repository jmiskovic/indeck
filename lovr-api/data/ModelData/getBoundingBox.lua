return {
  summary = 'Get the bounding box of the model.',
  description = 'Returns the 6 values of the model\'s axis-aligned bounding box.',
  arguments = {},
  returns = {
    minx = {
      type = 'number',
      description = 'The minimum x coordinate of the vertices in the model.'
    },
    maxx = {
      type = 'number',
      description = 'The maximum x coordinate of the vertices in the model.'
    },
    miny = {
      type = 'number',
      description = 'The minimum y coordinate of the vertices in the model.'
    },
    maxy = {
      type = 'number',
      description = 'The maximum y coordinate of the vertices in the model.'
    },
    minz = {
      type = 'number',
      description = 'The minimum z coordinate of the vertices in the model.'
    },
    maxz = {
      type = 'number',
      description = 'The maximum z coordinate of the vertices in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'minx', 'maxx', 'miny', 'maxy', 'minz', 'maxz' }
    }
  },
  related = {
    'ModelData:getWidth',
    'ModelData:getHeight',
    'ModelData:getDepth',
    'ModelData:getDimensions',
    'ModelData:getCenter',
    'ModelData:getBoundingSphere',
    'Model:getBoundingBox'
  }
}
