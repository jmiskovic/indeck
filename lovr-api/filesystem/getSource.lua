return {
  summary = 'Get the location of the project source.',
  description = 'Get the absolute path of the project\'s source directory or archive.',
  arguments = {},
  returns = {
    path = {
      type = 'string',
      description = 'The absolute path of the project\'s source, or `nil` if it\'s unknown.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'path' }
    }
  }
}
