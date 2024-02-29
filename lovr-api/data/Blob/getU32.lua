return {
  summary = 'Unpack unsigned 32-bit integers from the Blob.',
  description = 'Returns unsigned 32-bit integers from the data in the Blob.',
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
      description = '`count` unsigned 32-bit integers, from 0 to 4294967296.'
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
    'Blob:getF32',
    'Blob:getF64'
  }
}
