return {
  summary = 'Get a Buffer containing the triangle indices in the Model.',
  description = [[
    Returns the index buffer used by the Model.  The index buffer describes the order used to draw
    the vertices in each mesh.
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
    'Model:getVertexBuffer',
    'Model:getMesh'
  }
}
