return {
  summary = 'Get the number of samples in the Sound.',
  description = 'Returns the total number of samples in the Sound.',
  arguments = {},
  returns = {
    samples = {
      type = 'number',
      description = 'The total number of samples in the Sound.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'samples' }
    }
  },
  notes = 'For streams, this returns the number of samples in the stream\'s buffer.',
  related = {
    'Sound:getDuration',
    'Sound:getFrameCount',
    'Sound:getChannelCount'
  }
}
