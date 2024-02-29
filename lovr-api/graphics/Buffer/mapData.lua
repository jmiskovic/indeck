return {
  tag = 'buffer-transfer',
  summary = 'Get a writable pointer to the Buffer\'s memory.',
  description = [[
    Returns a pointer to GPU memory and schedules a copy from this pointer to the buffer's data. The
    data in the pointer will replace the data in the buffer.  This is intended for use with the
    LuaJIT FFI or for passing to C libraries.
  ]],
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A byte offset in the buffer to write to.'
    },
    extent = {
      type = 'number',
      default = 'nil',
      description = 'The number of bytes to replace.  If nil, writes to the rest of the buffer.'
    }
  },
  returns = {
    pointer = {
      type = 'lightuserdata',
      description = 'A pointer to the Buffer\'s memory.'
    }
  },
  variants = {
    {
      arguments = { 'offset', 'extent' },
      returns = { 'pointer' }
    }
  },
  notes = [[
    The pointer remains valid until the next call to `lovr.graphics.submit`, during which the data
    in the pointer will be uploaded to the buffer.

    The initial contents of the pointer are undefined.

    Special care should be taken when writing data:

    - Reading data from the pointer will be very slow on some systems, and should be avoided.
    - It is better to write data to the pointer sequentially.  Random access may be slower.
  ]],
  related = {
    'Blob:getPointer',
    'Buffer:getPointer'
  }
}
