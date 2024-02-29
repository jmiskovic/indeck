return {
  summary = 'Unpack 32-bit floating point numbers from the Blob.',
  description = 'Returns 32-bit floating point numbers from the data in the Blob.',
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A non-negative byte offset to read from.'
    },
    count = {
      type = 'number',
      default = '1',
      description = 'The number of floats to read.'
    }
  },
  returns = {
    ['...'] = {
      type = 'number',
      description = '`count` 32-bit floats.'
    }
  },
  variants = {
    {
      arguments = { 'offset', 'count' },
      returns = { '...' }
    }
  },
  related = {
    'Blob:getI8',
    'Blob:getU8',
    'Blob:getI16',
    'Blob:getU16',
    'Blob:getI32',
    'Blob:getU32',
    'Blob:getF64'
  }
}
