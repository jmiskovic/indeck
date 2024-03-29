return {
  tag = 'filesystem-virtual',
  summary = 'Get the absolute path to a file.',
  description = [[
    Get the absolute path of the mounted archive containing a path in the virtual filesystem.  This
    can be used to determine if a file is in the game's source directory or the save directory.
  ]],
  arguments = {
    path = {
      type = 'string',
      description = 'The path to check.'
    }
  },
  returns = {
    realpath = {
      type = 'string',
      description = 'The absolute path of the mounted archive containing `path`.'
    }
  },
  variants = {
    {
      arguments = { 'path' },
      returns = { 'realpath' }
    }
  }
}
