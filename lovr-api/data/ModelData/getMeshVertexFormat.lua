return {
  summary = 'Get the vertex format of a mesh.',
  description = [[
    Returns the vertex format of a mesh.  The vertex format defines the properties associated with
    each vertex (position, color, etc.), including their types and binary data layout.
  ]],
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh.'
    }
  },
  returns = {
    format = {
      type = 'table',
      description = 'The vertex format of the mesh.'
    }
  },
  variants = {
    {
      arguments = { 'mesh' },
      returns = { 'format' }
    }
  },
  notes = [[
    The format is given as a table of vertex attributes.  Each attribute is a table containing the
    following:

        { name, type, components, blob, offset, stride }

    - The `name` will be a `DefaultAttribute`.
    - The `type` will be an `AttributeType`.
    - The `component` count will be 1-4.
    - The `blob` is an index of one of the Blobs in the model (see `ModelData:getBlob`).
    - The `offset` is a byte offset from the start of the Blob where the attribute's data starts.
    - The `stride` is the number of bytes between consecutive values.
  ]],
  related = {
    'ModelData:getMeshIndexFormat'
  }
}
