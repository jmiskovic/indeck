return {
  tag = 'sourcePlayback',
  summary = 'Check if the Source is playing.',
  description = 'Returns whether or not the Source is playing.',
  arguments = {},
  returns = {
    playing = {
      type = 'boolean',
      description = 'Whether the Source is playing.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'playing' }
    }
  },
  related = {
    'Source:play',
    'Source:pause',
    'Source:stop'
  }
}
