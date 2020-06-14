return {
  summary = 'Get the name of the save directory.',
  description = [[
    Returns the identity of the game, which is used as the name of the save directory.  The default
    is `default`.
  ]],
  arguments = {},
  returns = {
    {
      name = 'identity',
      type = 'string',
      description = 'The name of the save directory, or `nil` if it isn\'t set.'
    }
  }
}
