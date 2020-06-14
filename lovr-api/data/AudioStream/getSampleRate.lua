return {
  summary = 'Get the sample rate of the AudioStream.',
  description = [[
    Returns the number of samples per second in the stream's sound data.  This is usually a high
    number like 44100.
  ]],
  arguments = {},
  returns = {
    {
      name = 'frequency',
      type = 'number',
      description = 'The number of samples per second in the AudioStream.'
    }
  },
  related = {
    'SoundData:getSampleRate',
    'Source:getSampleRate'
  }
}
