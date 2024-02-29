return {
  summary = 'Unpack signed 32-bit integers from the Blob.',
  description = 'Returns signed 32-bit integers from the data in the Blob.',
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A non-negative byte offset to read from.'
    },
    count = {
      type = 'number',
      default = '1',
      description = 'The number of integers to read.'
    }
  },
  returns = {
    ['...'] = {
      type = 'number',
      description = '`count` signed 32-bit integers, from -2147483648 to 2147483647.'
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
    'Blob:getU32',
    'Blob:getF32',
    'Blob:getF64'
  }
}
