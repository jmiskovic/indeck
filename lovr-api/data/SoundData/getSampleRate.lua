return {
  summary = 'Get the sample rate of the SoundData.',
  description = [[
    Returns the number of samples per second in the SoundData.  This is usually a high number like
    44100.
  ]],
  arguments = {},
  returns = {
    {
      name = 'frequency',
      type = 'number',
      description = 'The number of samples per second in the SoundData.'
    }
  },
  related = {
    'AudioStream:getSampleRate',
    'Source:getSampleRate'
  }
}
