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
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the position to draw the mesh at.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the position to draw the mesh at.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the position to draw the mesh at.'
    },
    scale = {
      type = 'number',
      default = '1',
      description = 'The scale of the mesh.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The number of radians the mesh is rotated around its rotational axis.'
    },
    ax = {
      type = 'number',
      default = '0',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      default = '1',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      default = '0',
      description = 'The z component of the axis of rotation.'
    },
    position = {
      type = 'Vec3',
      description = 'The position to draw the mesh at.'
    },
    scales = {
      type = 'Vec3',
      description = 'The scale of the mesh.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the mesh.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform to apply to the mesh.'
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
      description = 'The number of vertices to draw.'
    },
    indexcount = {
      type = 'number',
      description = 'The number of indices to draw.'
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
      description = 'Draw a range of vertices from a Buffer, using numbers for the transform.',
      arguments = { 'vertices', 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az', 'start', 'count', 'instances' },
      returns = {}
    },
    {
      description = 'Draw a range of vertices from a Buffer, using vector types for the transform.',
      arguments = { 'vertices', 'position', 'scales', 'orientation', 'start', 'count', 'instances' },
      returns = {}
    },
    {
      description = 'Draw a range of vertices from a Buffer, using a matrix for the transform.',
      arguments = { 'vertices', 'transform', 'start', 'count', 'instances' },
      returns = {}
    },
    {
      description = [[
        Draw a mesh using a vertex buffer and an index buffer, using numbers for the transform.
      ]],
      arguments = { 'vertices', 'indices', 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az', 'start', 'count', 'instances', 'base' },
      returns = {}
    },
    {
      description = [[
        Draw a mesh using a vertex buffer and an index buffer, using vector types for the transform.
      ]],
      arguments = { 'vertices', 'indices', 'position', 'scales', 'orientation', 'start', 'count', 'instances', 'base' },
      returns = {}
    },
    {
      description = [[
        Draw a mesh using a vertex buffer and an index buffer, using a matrix for the transform.
      ]],
      arguments = { 'vertices', 'indices', 'transform', 'start', 'count', 'instances', 'base' },
      returns = {}
    },
    {
      description = [[
        Perform indirect draws.  `drawcount` meshes from the vertex and index buffer will be drawn,
        using parameters starting from `offset` bytes in the `draws` buffer.
      ]],
      arguments = { 'vertices', 'indices', 'draws', 'drawcount', 'offset', 'stride' },
      returns = {}
    }
  },
  notes = [[
    The index buffer defines the order the vertices are drawn in.  It can be used to reorder, reuse,
    or omit vertices from the mesh.

    When drawing without a vertex buffer, the `VertexIndex` variable can be used in shaders to
    compute the position of each vertex, possibly by reading data from other `Buffer` or `Texture`
    resources.

    The active `DrawMode` controls whether the vertices are drawn as points, lines, or triangles.

    The active `Material` is applied to the mesh.
  ]],
  example = [[
    function lovr.load()
      local vertices = {
        vec3(  0,  .4, 0), vec4(1, 0, 0, 1),
        vec3(-.5, -.4, 0), vec4(0, 1, 0, 1),
        vec3( .5, -.4, 0), vec4(0, 0, 1, 1)
      }

      local format = {
        { name = 'VertexPosition', type = 'vec3' },
        { name = 'VertexColor', type = 'vec4' }
      }

      triangle = lovr.graphics.newBuffer(format, vertices)
    end

    function lovr.draw(pass)
      pass:mesh(triangle, 0, 1.7, -1)
    end
  ]]
}
