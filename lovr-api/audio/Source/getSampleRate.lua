return {
  summary = 'Get the sample rate of the Source.',
  description = [[
    Returns the number of samples per second in the Source.  This is usually a high number like
    44100.
  ]],
  arguments = {},
  returns = {
    {
      name = 'frequency',
      type = 'number',
      description = 'The number of samples per second in the Source.'
    }
  },
  related = {
    'SoundData:getSampleRate',
    'AudioStream:getSampleRate'
  }
}
