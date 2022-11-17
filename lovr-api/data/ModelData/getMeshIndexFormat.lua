return {
  summary = 'Get the data format of vertex indices in a mesh.',
  description = [[
    Returns the data format of vertex indices in a mesh.  If a mesh doesn't use vertex indices, this
    function returns nil.
  ]],
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh.'
    }
  },
  returns = {
    type = {
      type = 'AttributeType',
      description = 'The data type of each vertex index (always u16 or u32).'
    },
    blob = {
      type = 'number',
      description = 'The index of a Blob in the mesh where the binary data is stored.'
    },
    offset = {
      type = 'number',
      description = 'A byte offset into the Blob\'s data where the index data starts.'
    },
    stride = {
      type = 'number',
      description = [[
        The number of bytes between subsequent vertex indices.  Indices are always tightly packed,
        so this will always be 2 or 4 depending on the data type.
      ]]
    }
  },
  variants = {
    {
      arguments = { 'mesh' },
      returns = { 'type', 'blob', 'offset', 'stride' }
    }
  },
  related = {
    'ModelData:getMeshVertexFormat'
  }
}
