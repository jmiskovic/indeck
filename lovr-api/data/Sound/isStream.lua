return {
  summary = 'Check if the Sound is a stream.',
  description = 'Returns whether the Sound is a stream.',
  arguments = {},
  returns = {
    stream = {
      type = 'boolean',
      description = 'Whether the Sound is a stream.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'stream' }
    }
  },
  related = {
    'Sound:isCompressed',
    'lovr.data.newSound'
  }
}
