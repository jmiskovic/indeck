return {
  summary = 'Get the number of vertex indices in a mesh.',
  description = [[
    Returns the number of vertex indices in a mesh.  Vertex indices allow for vertices to be reused
    when defining triangles.
  ]],
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh.'
    }
  },
  returns = {
    count = {
      type = 'number',
      description = 'The number of vertex indices in the mesh.'
    }
  },
  variants = {
    {
      arguments = { 'mesh' },
      returns = { 'count' }
    }
  },
  notes = 'This may return zero if the mesh does not use indices.'
}
