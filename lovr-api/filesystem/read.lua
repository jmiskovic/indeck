return {
  summary = 'Read a file.',
  description = 'Read the contents of a file.',
  arguments = {
    filename = {
      type = 'string',
      description = 'The name of the file to read.'
    },
    bytes = {
      type = 'number',
      default = '-1',
      description = 'The number of bytes to read (if -1, all bytes will be read).'
    }
  },
  returns = {
    contents = {
      type = 'string',
      description = 'The contents of the file.'
    },
    bytes = {
      type = 'number',
      description = 'The number of bytes read from the file.'
    }
  },
  variants = {
    {
      arguments = { 'filename', 'bytes' },
      returns = { 'contents', 'bytes' }
    }
  },
  notes = 'If the file does not exist or cannot be read, nil is returned.'
}
