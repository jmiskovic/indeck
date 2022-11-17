return {
  summary = 'Different ways of doing face culling.',
  description = 'The different ways of doing triangle backface culling.',
  values = {
    {
      name = 'none',
      description = 'Both sides of triangles will be drawn.'
    },
    {
      name = 'back',
      description = 'Skips rendering the back side of triangles.'
    },
    {
      name = 'front',
      description = 'Skips rendering the front side of triangles.'
    }
  },
  related = {
    'Winding',
    'Pass:setCullMode',
    'Pass:setWinding'
  }
}
