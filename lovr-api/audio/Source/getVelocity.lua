return {
  summary = 'Get the velocity of the Source.',
  description = [[
    Returns the velocity of the Source, in meters per second.  This affects the doppler effect.
  ]],
  arguments = {},
  returns = {
    {
      name = 'x',
      type = 'number',
      description = 'The x velocity.'
    },
    {
      name = 'y',
      type = 'number',
      description = 'The y velocity.'
    },
    {
      name = 'z',
      type = 'number',
      description = 'The z velocity.'
    }
  },
  notes = 'The Source does not move based on its velocity.'
}
