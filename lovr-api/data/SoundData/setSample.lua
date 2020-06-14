return {
  summary = 'Modify a sample in the SoundData.',
  description = [[
    Modify a single sample in the SoundData.  Sample indices start at zero, and samples should be
    between -1 and 1.
  ]],
  arguments = {
    {
      name = 'index',
      type = 'number',
      description = 'The index of the sample to set.'
    },
    {
      name = 'value',
      type = 'number',
      description = 'The new value of the sample.'
    }
  },
  returns = {},
  notes = [[
    Note that samples for individual channels in stereo sounds are stored next to each other.
  ]],
  related = {
    'SoundData:getSampleCount',
    'SoundData:getSampleRate'
  }
}
