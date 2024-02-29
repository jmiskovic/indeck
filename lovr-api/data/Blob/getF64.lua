return {
  summary = 'Unpack 64-bit floating point numbers from the Blob.',
  description = 'Returns 64-bit floating point numbers from the data in the Blob.',
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A non-negative byte offset to read from.'
    },
    count = {
      type = 'number',
      default = '1',
      description = 'The number of doubles to read.'
    }
  },
  returns = {
    ['...'] = {
      type = 'number',
      description = '`count` 64-bit doubles.'
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
    'Blob:getF32'
  }
}
