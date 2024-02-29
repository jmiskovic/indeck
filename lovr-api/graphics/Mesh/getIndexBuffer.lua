return {
  summary = 'Get the Buffer backing the vertex indices of the Mesh.',
  description = [[
    Returns the `Buffer` object that holds the data for the vertex indices in the Mesh.

    This can be `nil` if the Mesh doesn't have any indices.

    If a Mesh uses the `cpu` storage mode, the index buffer is internal to the `Mesh` and this
    function will return `nil`.  This ensures that the CPU data for the Mesh does not get out of
    sync with the GPU data in the Buffer.
  ]],
  arguments = {},
  returns = {
    buffer = {
      type = 'Buffer',
      description = 'The index buffer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'buffer' }
    }
  },
  related = {
    'Mesh:getIndices',
    'Mesh:setIndices',
    'Mesh:getVertexBuffer'
  }
}
