return {
  tag = 'drawing',
  summary = 'Draw a mesh.',
  description = 'Draws a mesh.',
  arguments = {
    vertices = {
      type = 'Buffer',
      default = 'nil',
      description = 'The buffer containing the vertices to draw.'
    },
    indices = {
      type = 'Buffer',
      description = 'The buffer containing the vertex indices to draw.'
    },
    draws = {
      type = 'Buffer',
      description = 'The buffer containing indirect draw commands.'
    },
    drawcount = {
      type = 'number',
      description = 'The number of indirect draws to draw.'
    },
    offset = {
      type = 'number',
      description = 'A byte offset into the draw buffer.'
    },
    stride = {
      type = 'number',
      description = 'The number of bytes between consecutive elements in the draw buffer.'
    },
    transform = {
      type = 'Mat4',
      description = [[
        The transform to apply to the mesh.  Can also be provided as a position, 1-component scale,
        and rotation using a combination of `Vectors` and numbers.
      ]]
    },
    start = {
      type = 'number',
      default = '1',
      description = [[
        The 1-based index of the first vertex to render from the vertex buffer (or the first index,
        when using an index buffer).
      ]]
    },
    count = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of vertices to render (or the number of indices, when using an index buffer).
        When `nil`, as many vertices or indices as possible will be drawn (based on the length of
        the Buffers and `start`).
      ]]
    },
    vertexcount = {
      type = 'number',
      description = 'The number of vertices or indices to draw.'
    },
    instances = {
      type = 'number',
      default = '1',
      description = 'The number of copies of the mesh to render.'
    },
    base = {
      type = 'number',
      default = '0',
      description = 'A base offset to apply to vertex indices.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'vertices', 'transform', 'start', 'count', 'instances', 'base' },
      returns = {}
    },
    {
      arguments = { 'vertices', 'indices', 'transform', 'start', 'count', 'instances', 'base' },
      returns = {}
    },
    {
      arguments = { 'vertices', 'indices', 'draws', 'drawcount', 'offset', 'stride' },
      returns = {}
    },
    {
      arguments = { 'vertexcount', 'transform' },
      returns = {}
    },
    {
      arguments = { 'vertexcount', 'indices', 'transform' },
      returns = {}
    }
  },
  notes = [[
    The index buffer defines the order the vertices are drawn in.  It can be used to reorder, reuse,
    or omit vertices from the mesh.

    The active `MeshMode` controls whether the vertices are drawn as points, lines, or triangles.

    The active `Material` is applied to the mesh.
  ]],
  example = [[
    function lovr.draw(pass)
      local vertices = {
        vec3(  0,  .4, 0), vec4(1, 0, 0, 1),
        vec3(-.5, -.4, 0), vec4(0, 1, 0, 1),
        vec3( .5, -.4, 0), vec4(0, 0, 1, 1)
      }

      local format = {
        { type = 'vec3', location = 'VertexPosition' },
        { type = 'vec4', location = 'VertexColor' }
      }

      local triangle = lovr.graphics.getBuffer(vertices, format)

      pass:mesh(triangle, 0, 1.7, -1)
    end
  ]]
}
