return {
  summary = 'Set a Buffer for the Mesh to use for vertex indices.',
  description = [[
    Sets a `Buffer` object the Mesh will use for vertex indices.

    This can only be used if the Mesh uses the `gpu` storage mode.

    The Buffer must have a single field with the `u16`, `u32`, `index16`, or `index32` type.
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
  notes = [[
    The index buffer stores a list of numbers where each number is the index of a vertex in the
    Mesh.  When drawing the Mesh, the data from the vertex corresponding to the index is used.  This
    can be used to reorder or reuse vertices, which uses less data than repeating a vertex multiple
    times in the Mesh.
  ]],
  example = {
    description = 'Use an index buffer to draw a plane.',
    code = [[
      function lovr.load()
        mesh = lovr.graphics.newMesh({
          { -1,  1, 0 }, -- upper left
          {  1,  1, 0 }, -- upper right
          { -1, -1, 0 }, -- lower left
          {  1, -1, 0 }, -- lower right
        }, 'gpu')

        -- 2 triangles
        local indices = { 1,3,2, 2,3,4 }

        local indexBuffer = lovr.graphics.newBuffer('index16', indices)
        mesh:setIndexBuffer(indexBuffer)
      end

      function lovr.draw(pass)
        pass:draw(mesh, 0, 1.7, -2)
      end
    ]]
  },
  related = {
    'Mesh:getIndices',
    'Mesh:setIndices',
    'Mesh:getVertexBuffer'
  }
}
