return {
  summary = 'Write to a file.',
  description = 'Write to a file.',
  arguments = {
    {
      name = 'filename',
      type = 'string',
      description = 'The file to write to.'
    },
    {
      name = 'content',
      type = 'string',
      description = 'A string to write to the file.'
    }
  },
  returns = {
    {
      name = 'bytes',
      type = 'number',
      description = 'The number of bytes written.'
    }
  },
  notes = [[
    If the file does not exist, it is created.

    If the file already has data in it, it will be replaced with the new content.
  ]],
  related = {
    'lovr.filesystem.append',
    'lovr.filesystem.read'
  }
}
