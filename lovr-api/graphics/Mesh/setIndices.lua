return {
  summary = 'Set the vertex indices of the Mesh.',
  description = [[
    Sets or clears the vertex indices of the Mesh.  Vertex indices define the list of triangles in
    the mesh.  They allow vertices to be reused multiple times without duplicating all their data,
    which can save a lot of memory and processing time if a vertex is used for multiple triangles.

    If a Mesh doesn't have vertex indices, then the vertices are rendered in order.
  ]],
  arguments = {
    t = {
      type = 'table',
      description = 'A list of numbers (1-based).'
    },
    blob = {
      type = 'Blob',
      description = 'The Blob with index data.'
    },
    type = {
      type = 'DataType',
      description = 'The type of index data in the Blob.  Must be `u16` or `u32`.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set vertex indices using a table.',
      arguments = { 't' },
      returns = {}
    },
    {
      description = 'Set vertex indices using a Blob.',
      arguments = { 'blob', 'type' },
      returns = {}
    },
    {
      description = 'Disable vertex indices.',
      arguments = {},
      returns = {}
    }
  },
  related = {
    'Mesh:getIndexBuffer',
    'Mesh:setIndexBuffer',
    'Mesh:setVertices'
  }
}
