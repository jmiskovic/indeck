return {
  summary = 'Get the total number of triangles in the model.',
  description = [[
    Returns the total number of triangles in the model.  This count includes meshes that are
    attached to multiple nodes, and the count corresponds to the triangles returned by
    `ModelData:getTriangles`.
  ]],
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The total number of triangles in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getTriangles',
    'ModelData:getVertexCount',
    'Model:getTriangleCount'
  }
}
