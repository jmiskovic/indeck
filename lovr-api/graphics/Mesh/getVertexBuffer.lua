return {
  summary = 'Get the Buffer backing the vertices of the Mesh.',
  description = [[
    Returns the `Buffer` object that holds the data for the vertices in the Mesh.

    If a Mesh uses the `cpu` storage mode, the vertex buffer is internal to the `Mesh` and this
    function will return `nil`.  This ensures that the CPU data for the Mesh does not get out of
    sync with the GPU data in the Buffer.
  ]],
  arguments = {},
  returns = {
    buffer = {
      type = 'Buffer',
      description = 'The vertex buffer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'buffer' }
    }
  },
  related = {
    'Mesh:getVertices',
    'Mesh:setVertices',
    'Mesh:getIndexBuffer'
  }
}
