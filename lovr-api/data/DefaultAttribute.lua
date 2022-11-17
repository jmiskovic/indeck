return {
  summary = 'Attributes that can be loaded from a model.',
  description = [[
    These are the different types of attributes that may be present in meshes loaded from models.
  ]],
  values = {
    {
      name = 'position',
      description = 'Vertex positions.'
    },
    {
      name = 'normal',
      description = 'Vertex normal vectors.'
    },
    {
      name = 'uv',
      description = 'Vertex texture coordinates.'
    },
    {
      name = 'color',
      description = 'Vertex colors.'
    },
    {
      name = 'tangent',
      description = 'Vertex tangent vectors.'
    },
    {
      name = 'joints',
      description = 'Vertex joint indices.'
    },
    {
      name = 'weights',
      description = 'Vertex joint weights.'
    }
  }
}
