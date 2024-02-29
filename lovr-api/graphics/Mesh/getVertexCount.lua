return {
  summary = 'Get the number of vertices in the Mesh.',
  description = [[
    Returns the number of vertices in the Mesh.  The vertex count is set when the Mesh is created
    and can't change afterwards.
  ]],
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of vertices in the Mesh.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Mesh:getVertexStride',
    'Mesh:getVertexFormat',
    'lovr.graphics.newMesh',
    'Model:getMesh'
  }
}
