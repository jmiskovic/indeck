return {
  summary = 'Check whether a path is a file.',
  description = 'Check if a path exists and is a file.',
  arguments = {
    path = {
      type = 'string',
      description = 'The path to check.'
    }
  },
  returns = {
    isFile = {
      type = 'boolean',
      description = 'Whether or not the path is a file.'
    }
  },
  variants = {
    {
      arguments = { 'path' },
      returns = { 'isFile' }
    }
  },
  related = {
    'lovr.filesystem.isDirectory'
  }
}
