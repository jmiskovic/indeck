return {
  summary = 'Append content to the end of a file.',
  description = 'Appends content to the end of a file.',
  arguments = {
    {
      name = 'filename',
      type = 'string',
      description = 'The file to append to.'
    },
    {
      name = 'content',
      type = 'string',
      description = 'A string to write to the end of the file.'
    }
  },
  returns = {
    {
      name = 'bytes',
      type = 'number',
      description = 'The number of bytes actually written to the file.'
    }
  },
  notes = 'If the file does not exist, it is created.'
}
