return {
  summary = 'Get the playback position of the Source.',
  description = 'Returns the current playback position of the Source.',
  arguments = {
    {
      name = 'unit',
      type = 'TimeUnit',
      default = [['seconds']],
      description = 'The unit to return.'
    }
  },
  returns = {
    {
      name = 'position',
      type = 'number',
      description = 'The current playback position.'
    }
  },
  notes = 'This function can not be used on a Source backed by a raw `AudioStream`.'
}
