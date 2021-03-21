return {
  summary = 'Get the number of samples stored in the Sound.',
  description = 'Returns the total number of samples in the Sound.',
  arguments = {},
  returns = {
    {
      name = 'samples',
      type = 'number',
      description = 'The total number of samples in the Sound.'
    }
  },
  related = {
    'Sound:getChannelCount',
    'Source:getDuration'
  }
}
