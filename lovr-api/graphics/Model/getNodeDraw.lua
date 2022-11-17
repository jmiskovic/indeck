return {
  summary = 'Get the information needed to draw one mesh in the model.',
  description = [[
    Returns the draw mode, material, and vertex range of a mesh in the model.
  ]],
  arguments = {
    node = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
    },
    index = {
      type = 'number',
      description = 'The index of the draw.'
    }
  },
  returns = {
    mode = {
      type = 'MeshMode',
      description = 'Whether the vertices are points, lines, or triangles.'
    },
    material = {
      type = 'Material',
      description = 'The Material used by the draw.'
    },
    start = {
      type = 'number',
      description = 'The offset of the first vertex in the draw.'
    },
    count = {
      type = 'number',
      description = 'The number of vertices in the draw.'
    },
    base = {
      type = 'number',
      description = [[
        The base vertex of the draw (added to each instance value), or nil if the draw does not use
        an index buffer.
      ]]
    }
  },
  variants = {
    {
      arguments = { 'node', 'index' },
      returns = { 'mode', 'material', 'start', 'count', 'base' }
    },
    {
      arguments = { 'name', 'index' },
      returns = { 'mode', 'material', 'start', 'count', 'base' }
    }
  },
  example = [[
    function lovr.load()
      local m = lovr.graphics.newModel('enraged-gorilla.gltf')

      model = {
        object = m,
        data = m:getData(),
        vertices = m:getVertexBuffer(),
        indices = m:getIndexBuffer()
      }
    end

    local function drawNode(model, pass, i)
      for j = 1, model.object:getNodeDrawCount(i) do
        local mode, material, start, count, base = model.object:getNodeDraw(i, j)
        local transform = mat4(model.object:getNodeTransform(i))

        pass:setMeshMode(mode)
        pass:setMaterial(material)

        if base then
          pass:mesh(model.vertices, model.indices, transform, start, count, 1, base)
        else
          pass:mesh(model.vertices, transform, start, count)
        end
      end

      for _, index in ipairs(model.data:getNodeChildren(i)) do
        drawNode(model, pass, index)
      end
    end

    function lovr.draw(pass)
      drawNode(model, pass, model.data:getRootNode())
    end
  ]],
  related = {
    'Pass:setMeshMode',
    'Pass:setMaterial',
    'Pass:mesh',
    'Model:getVertexBuffer',
    'Model:getIndexBuffer'
  }
}
