return {
  summary = 'Set the velocity of the Source.',
  description = [[
    Sets the velocity of the Source, in meters per second.  This affects the doppler effect.
  ]],
  arguments = {
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
  returns = {},
  notes = 'The Source does not move based on its velocity.'
}
