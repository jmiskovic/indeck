return {
  summary = 'Get the draw mode of the Mesh.',
  description = [[
    Returns the `DrawMode` of the mesh, which controls how the vertices in the Mesh are connected
    together to create pixels.  The default is `triangles`.
  ]],
  arguments = {},
  returns = {
    mode = {
      type = 'DrawMode',
      description = 'The current draw mode.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'mode' }
    }
  },
  related = {
    'Pass:setMeshMode'
  }
}
