return {
  tag = 'filesystem-files',
  summary = 'Check whether a path is a directory.',
  description = 'Check if a path exists and is a directory.',
  arguments = {
    path = {
      type = 'string',
      description = 'The path to check.'
    }
  },
  returns = {
    isDirectory = {
      type = 'boolean',
      description = 'Whether or not the path is a directory.'
    }
  },
  variants = {
    {
      arguments = { 'path' },
      returns = { 'isDirectory' }
    }
  },
  related = {
    'lovr.filesystem.isFile'
  }
}
