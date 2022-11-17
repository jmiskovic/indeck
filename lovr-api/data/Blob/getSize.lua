return {
  summary = 'Get the size of the Blob\'s data.',
  description = [[
    Returns the size of the Blob's contents, in bytes.
  ]],
  arguments = {},
  returns = {
    bytes = {
      type = 'number',
      description = 'The size of the Blob, in bytes.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'bytes' }
    }
  }
}
