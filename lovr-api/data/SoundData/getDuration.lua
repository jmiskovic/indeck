return {
  summary = 'Get the duration of the SoundData.',
  description = 'Returns the duration of the sound data in seconds.',
  arguments = {},
  returns = {
    {
      name = 'duration',
      type = 'number',
      description = 'The duration of the sound.'
    }
  },
  related = {
    'SoundData:getSampleCount',
    'AudioStream:getDuration',
    'Source:getDuration'
  }
}
