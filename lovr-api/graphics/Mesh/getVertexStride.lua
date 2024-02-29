return {
  summary = 'Get the size of each vertex in the Mesh.',
  description = 'Returns the stride of the Mesh, which is the number of bytes used by each vertex.',
  arguments = {},
  returns = {
    stride = {
      type = 'number',
      description = 'The stride of the Mesh, in bytes.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'stride' }
    }
  },
  related = {
    'Mesh:getVertexCount',
    'Mesh:getVertexFormat',
    'lovr.graphics.newMesh'
  }
}
