return {
  summary = 'Get the vertices in the Mesh.',
  description = 'Returns the vertices in the Mesh.',
  arguments = {
    index = {
      type = 'number',
      default = '1',
      description = 'The index of the first vertex to return.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of vertices to return.  If nil, returns the "rest" of the vertices, based on the
        `index` argument.
      ]]
    }
  },
  returns = {
    vertices = {
      type = 'table',
      description = [[
        A table of vertices.  Each vertex is a table of numbers for each vertex attribute, given by
        the vertex format of the Mesh.
      ]]
    }
  },
  variants = {
    {
      arguments = { 'index', 'count' },
      returns = { 'vertices' }
    }
  },
  notes = [[
    > **This function will be very very slow if the storage mode of the Mesh is `gpu`, because the
    > data will be downloaded from VRAM.  A better option is to call `Buffer:newReadback` on the
    > Mesh's underlying vertex buffer (`Mesh:getVertexBuffer`), which will download in the
    > background instead of waiting for it to complete.**
  ]],
  related = {
    'Mesh:getVertexBuffer',
    'Mesh:getVertexFormat',
    'Mesh:getIndices',
    'Mesh:setIndices'
  }
}
