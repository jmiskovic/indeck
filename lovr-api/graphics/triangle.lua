return {
  tag = 'graphicsPrimitives',
  summary = 'Draw triangles.',
  description = 'Draws triangles from a list of points.',
  arguments = {
    mode = {
      type = 'DrawStyle',
      description = 'How to draw the triangle.'
    },
    material = {
      type = 'Material',
      description = 'The Material to apply.'
    },
    x = {
      type = 'number',
      description = 'The x coordinate of a vertex.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of a vertex.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of a vertex.'
    },
    ['...'] = {
      type = 'number',
      description = 'More vertices.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'mode', 'x', 'y', 'z', '...' },
      returns = {}
    },
    {
      arguments = { 'material', 'x', 'y', 'z', '...' },
      returns = {}
    }
  },
  notes = 'The number of vertices must be a multiple of three.'
}
