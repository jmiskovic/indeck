return {
  summary = 'Set or remove the bounding box of the Mesh.',
  description = [[
    Sets or removes the axis-aligned bounding box of the Mesh.

    Meshes with the `cpu` storage mode can compute their bounding box automatically using
    `Mesh:computeBoundingBox`.

    Passes will use the bounding box of a Mesh to cull it against the cameras when
    `Pass:setViewCull` is enabled, which avoids rendering it when it's out of view.
  ]],
  arguments = {
    minx = {
      type = 'number',
      description = 'The minimum x coordinate of the bounding box.'
    },
    maxx = {
      type = 'number',
      description = 'The maximum x coordinate of the bounding box.'
    },
    miny = {
      type = 'number',
      description = 'The minimum y coordinate of the bounding box.'
    },
    maxy = {
      type = 'number',
      description = 'The maximum y coordinate of the bounding box.'
    },
    minz = {
      type = 'number',
      description = 'The minimum z coordinate of the bounding box.'
    },
    maxz = {
      type = 'number',
      description = 'The maximum z coordinate of the bounding box.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'minx', 'maxx', 'miny', 'maxy', 'minz', 'maxz' },
      returns = {}
    },
    {
      description = 'Remove the bounding box.',
      arguments = {},
      returns = {}
    }
  },
  related = {
    'Mesh:computeBoundingBox',
    'Pass:setViewCull',
    'Collider:getAABB',
    'Shape:getAABB',
    'Model:getBoundingBox',
    'ModelData:getBoundingBox'
  }
}
