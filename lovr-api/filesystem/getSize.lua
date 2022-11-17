return {
  summary = 'Get the size of a file.',
  description = 'Returns the size of a file, in bytes.',
  arguments = {
    file = {
      type = 'string',
      description = 'The file.'
    }
  },
  returns = {
    size = {
      type = 'number',
      description = 'The size of the file, in bytes.'
    }
  },
  variants = {
    {
      arguments = { 'file' },
      returns = { 'size' }
    }
  },
  notes = 'If the file does not exist, an error is thrown.'
}
