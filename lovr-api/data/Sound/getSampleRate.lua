return {
  summary = 'Get the sample rate of the Sound.',
  description = [[
    Returns the number of samples per second in the Sound.  This is usually a high number like
    48000.
  ]],
  arguments = {},
  returns = {
    {
      name = 'frequency',
      type = 'number',
      description = 'The number of samples per second in the Sound.'
    }
  }
}
