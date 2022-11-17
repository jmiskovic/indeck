return {
  summary = 'Get the data for a single vertex in a mesh.',
  description = [[
    Returns the data for a single vertex in a mesh.  The data returned depends on the vertex format
    of a mesh, which is given by `ModelData:getMeshVertexFormat`.
  ]],
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh to get the vertex from.'
    },
    vertex = {
      type = 'number',
      description = 'The index of a vertex in the mesh to retrieve.'
    }
  },
  returns = {
    ['...'] = {
      type = 'number',
      description = 'The data for all of the attributes of the vertex.'
    }
  },
  variants = {
    {
      arguments = { 'mesh', 'vertex' },
      returns = { '...' }
    }
  },
  related = {
    'ModelData:getMeshVertexFormat',
    'ModelData:getMeshVertexCount',
    'ModelData:getMeshIndex',
    'ModelData:getTriangles'
  }
}
