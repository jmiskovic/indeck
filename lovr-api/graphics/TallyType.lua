return {
  summary = 'Different values a Tally can measure.',
  description = 'These are the different metrics a `Tally` can measure.',
  values = {
    {
      name = 'time',
      description = 'Each slot measures elapsed time in nanoseconds.'
    },
    {
      name = 'shader',
      description = [[
        Each slot measures 4 numbers: the total number of vertices processed, the number of times
        the vertex shader was run, the number of triangles that were visible in the view, and the
        number of times the fragment shader was run.
      ]]
    },
    {
      name = 'pixel',
      description = 'Each slot measures the approximate number of pixels affected by rendering.'
    }
  }
}
