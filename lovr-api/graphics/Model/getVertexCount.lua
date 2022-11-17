return {
  summary = 'Get the total vertex count of the Model.',
  description = 'Returns the total vertex count of the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The total number of vertices.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  notes = [[
    This isn't always the same as the length of the vertex buffer, since a mesh in the Model could
    be drawn by multiple nodes.
  ]],
  related = {
    'Model:getTriangles',
    'Model:getTriangleCount',
    'ModelData:getVertexCount'
  }
}
