return {
  tag = 'sourcePlayback',
  summary = 'Get the playback position of the Source.',
  description = 'Returns the current playback position of the Source.',
  arguments = {
    unit = {
      type = 'TimeUnit',
      default = [['seconds']],
      description = 'The unit to return.'
    }
  },
  returns = {
    position = {
      type = 'number',
      description = 'The current playback position.'
    }
  },
  variants = {
    {
      arguments = { 'unit' },
      returns = { 'position' }
    }
  },
  notes = 'The return value for Sources backed by a stream `Sound` has no meaning.'
}
