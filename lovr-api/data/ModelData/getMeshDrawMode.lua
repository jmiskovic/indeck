return {
  summary = 'Get the draw mode of a mesh.',
  description = [[
    Returns the draw mode of a mesh.  This controls how its vertices are connected together (points,
    lines, or triangles).
  ]],
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh.'
    }
  },
  returns = {
    mode = {
      type = 'DrawMode',
      description = 'The draw mode of the mesh.'
    }
  },
  variants = {
    {
      arguments = { 'mesh' },
      returns = { 'mode' }
    }
  }
}
