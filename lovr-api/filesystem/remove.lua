return {
  summary = 'Remove a file or directory.',
  description = 'Remove a file or directory in the save directory.',
  arguments = {
    path = {
      type = 'string',
      description = 'The file or directory to remove.'
    }
  },
  returns = {
    success = {
      type = 'boolean',
      description = 'Whether the path was removed.'
    }
  },
  variants = {
    {
      arguments = { 'path' },
      returns = { 'success' }
    }
  },
  notes = [[
    A directory can only be removed if it is empty.

    To recursively remove a folder, use this function with `lovr.filesystem.getDirectoryItems`.
  ]]
}
