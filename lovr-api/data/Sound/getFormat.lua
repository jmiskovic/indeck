return {
  summary = 'Get the sample format of the Sound.',
  description = 'Returns the sample format of the Sound.',
  arguments = {},
  returns = {
    format = {
      type = 'SampleFormat',
      description = 'The data type of each sample.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'format' }
    }
  },
  related = {
    'Sound:getChannelLayout',
    'Sound:getSampleRate'
  }
}
