return {
  summary = 'Get a raw pointer to the Buffer\'s memory.',
  description = [[
    Returns a raw pointer to the Buffer's memory as a lightuserdata, intended for use with the
    LuaJIT FFI or for passing to C libraries.  This is only available for temporary buffers, so the
    pointer is only valid until `lovr.graphics.submit` is called.
  ]],
  arguments = {},
  returns = {
    pointer = {
      type = 'lightuserdata',
      description = 'A pointer to the Buffer\'s memory.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'pointer' }
    }
  },
  related = {
    'Blob:getPointer'
  }
}
