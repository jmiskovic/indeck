return {
  summary = 'Get the total number of triangles in the Model.',
  description = 'Returns the total number of triangles in the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The total number of triangles in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  notes = [[
    This isn't always related to the length of the vertex buffer, since a mesh in the Model could be
    drawn by multiple nodes.
  ]],
  related = {
    'Model:getTriangles',
    'Model:getVertexCount',
    'ModelData:getTriangleCount',
    'Model:getMesh'
  }
}
