return {
  tag = 'sourcePlayback',
  summary = 'Check if the Source is looping.',
  description = 'Returns whether or not the Source will loop when it finishes.',
  arguments = {},
  returns = {
    looping = {
      type = 'boolean',
      description = 'Whether or not the Source is looping.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'looping' }
    }
  }
}
