return {
  tag = 'buffer-metadata',
  summary = 'Get the size of the Buffer, in bytes.',
  description = [[
    Returns the size of the Buffer in VRAM, in bytes.  This is the same as `length * stride`.

    The size of the Buffer can't change after it's created.
  ]],
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
