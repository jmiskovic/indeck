return {
  summary = 'Different draw modes for meshes in ModelDatas.',
  description = 'The DrawMode of a mesh determines how its vertices are connected together.',
  values = {
    {
      name = 'points',
      description = 'Each vertex is draw as a single point.'
    },
    {
      name = 'lines',
      description = 'Every pair of vertices is drawn as a line.'
    },
    {
      name = 'linestrip',
      description = 'Draws a single line through all of the vertices.'
    },
    {
      name = 'lineloop',
      description = [[
        Draws a single line through all of the vertices, then connects back to the first vertex.
      ]]
    },
    {
      name = 'strip',
      description = [[
        Vertices are rendered as triangles.  After the first 3 vertices, each
        subsequent vertex connects to the previous two.
      ]]
    },
    {
      name = 'triangles',
      description = 'Every 3 vertices forms a triangle.'
    },
    {
      name = 'fan',
      description = [[
        Vertices are rendered as triangles.  After the first 3 vertices, each
        subsequent vertex is connected to the previous vertex and the first vertex.
      ]]
    }
  },
  related = {
    'ModelData:getMeshDrawMode'
  }
}
