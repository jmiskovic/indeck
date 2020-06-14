return {
  summary = 'Get a sample from the SoundData.',
  description = [[
    Returns a single sample from the SoundData.  Sample indices start at 0, and the returned value
    will be between -1 and 1.
  ]],
  arguments = {
    {
      name = 'index',
      type = 'number',
      description = 'The index of the sample to get.'
    }
  },
  returns = {
    {
      name = 'value',
      type = 'number',
      description = 'A number indicating the value of the sample at the given index.'
    }
  },
  notes = [[
    Note that samples for individual channels in stereo sounds are stored next to each other.
  ]],
  related = {
    'SoundData:getSampleCount',
    'SoundData:getSampleRate'
  }
}
