return {
  summary = 'Get the number of samples stored in the SoundData.',
  description = [[
    Returns the number of samples in the SoundData (per channel).
  ]],
  arguments = {},
  returns = {
    {
      name = 'samples',
      type = 'number',
      description = 'The total number of channels per channel.'
    }
  },
  related = {
    'SoundData:getSample',
    'SoundData:getChannelCount',
    'Source:getDuration'
  }
}
