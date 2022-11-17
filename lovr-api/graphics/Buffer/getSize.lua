return {
  summary = 'Get the size of the Buffer, in bytes.',
  description = 'Returns the size of the Buffer, in bytes.  This is the same as `length * stride`.',
  arguments = {},
  returns = {
    size = {
      type = 'number',
      description = 'The size of the Buffer, in bytes.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'size' }
    }
  },
  related = {
    'Buffer:getLength',
    'Buffer:getStride'
  }
}
