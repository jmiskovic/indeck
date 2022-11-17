return {
  summary = 'Different ways to draw mesh vertices.',
  description = [[
    Different ways vertices in a mesh can be connected together and filled in with pixels.
  ]],
  values = {
    {
      name = 'points',
      description = [[
        Each vertex is rendered as a single point.  The size of the point can be controlled using
        the `pointSize` shader flag, or by writing to the `PointSize` variable in shaders.  The
        maximum point size is given by the `pointSize` limit from `lovr.graphics.getLimits`.
      ]]
    },
    {
      name = 'lines',
      description = [[
        Pairs of vertices are connected with line segments.  To draw a single line through all of
        the vertices, an index buffer can be used to repeat vertices.  It is not currently possible
        to change the width of the lines, although cylinders or capsules can be used as an
        alternative.
      ]]
    },
    {
      name = 'triangles',
      description = [[
        Every 3 vertices form a triangle, which is filled in with pixels (unless `Pass:setWireframe`
        is used).  This mode is the most commonly used.
      ]]
    }
  }
}
