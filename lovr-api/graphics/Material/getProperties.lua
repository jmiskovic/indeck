return {
  summary = 'Get the properties of the Material.',
  description = 'Returns the properties of the Material in a table.',
  arguments = {},
  returns = {
    properties = {
      type = 'table',
      description = 'The Material properties.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'properties' }
    }
  }
}
