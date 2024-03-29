return {
  tag = 'filesystem-paths',
  summary = 'Get the location of the user\'s home directory.',
  description = 'Returns the absolute path of the user\'s home directory.',
  arguments = {},
  returns = {
    path = {
      type = 'string',
      description = 'The absolute path of the user\'s home directory.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'path' }
    }
  }
}
