return {
  summary = 'Set the draw mode of the Mesh.',
  description = [[
    Changes the `DrawMode` of the mesh, which controls how the vertices in the Mesh are connected
    together to create pixels.  The default is `triangles`.
  ]],
  arguments = {
    mode = {
      type = 'DrawMode',
      description = 'The current draw mode.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'mode' },
      returns = {}
    }
  },
  related = {
    'Pass:setMeshMode'
  }
}
