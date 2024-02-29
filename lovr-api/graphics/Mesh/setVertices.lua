return {
  summary = 'Set vertices in the Mesh.',
  description = 'Sets the data for vertices in the Mesh.',
  arguments = {
    vertices = {
      type = 'table',
      description = [[
        A table of vertices, where each vertex is a table of numbers matching the vertex format of
        the Mesh.
      ]]
    },
    blob = {
      type = 'Blob',
      description = 'A Blob containing binary vertex data.'
    },
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
  returns = {},
  variants = {
    {
      arguments = { 'vertices', 'index', 'count' },
      returns = {}
    },
    {
      arguments = { 'blob', 'index', 'count' },
      returns = {}
    }
  },
  notes = [[
    CPU meshes will write the data to CPU memory and upload any changes to the GPU before the Mesh
    is drawn.  GPU meshes don't store this CPU copy of the data, and will immediately upload the new
    vertex data to VRAM.  This means that multiple calls to this function might be slower on a `gpu`
    mesh.
  ]],
  related = {
    'Mesh:getVertexBuffer',
    'Mesh:getVertexFormat',
    'Mesh:getIndices',
    'Mesh:setIndices'
  }
}
