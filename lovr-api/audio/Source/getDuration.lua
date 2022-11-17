return {
  tag = 'sourcePlayback',
  summary = 'Get the duration of the Source.',
  description = 'Returns the duration of the Source.',
  arguments = {
    unit = {
      type = 'TimeUnit',
      default = [['seconds']],
      description = 'The unit to return.'
    }
  },
  returns = {
    duration = {
      type = 'number',
      description = 'The duration of the Source.'
    }
  },
  variants = {
    {
      arguments = { 'unit' },
      returns = { 'duration' }
    }
  },
  related = {
    'Sound:getDuration'
  }
}
