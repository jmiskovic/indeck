return {
  summary = 'Get the length of the Buffer.',
  description = 'Returns the length of the Buffer.',
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
