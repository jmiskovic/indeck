return {
  tag = 'buffer-metadata',
  summary = 'Get the length of the Buffer.',
  description = [[
    Returns the length of the Buffer, or `nil` if the Buffer was not created with a format.
  ]],
  arguments = {},
  returns = {
    length = {
      type = 'number',
      description = 'The length of the Buffer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'length' }
    }
  },
  related = {
    'Buffer:getSize',
    'Buffer:getStride'
  }
}
