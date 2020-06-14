return {
  tag = 'listener',
  summary = 'Set the doppler effect parameters.',
  description = [[
    Sets the parameters that control the simulated doppler effect: The effect intensity and the
    speed of sound.
  ]],
  arguments = {
    {
      name = 'factor',
      type = 'number',
      default = '1.0',
      description = 'The doppler effect scaling factor.'
    },
    {
      name = 'speedOfSound',
      type = 'number',
      default = '343.29',
      description = 'The speed of sound, in meters per second.'
    }
  },
  returns = {},
  notes = 'The default factor is 1.0 and the default speed of sound is 343.29.'
}
