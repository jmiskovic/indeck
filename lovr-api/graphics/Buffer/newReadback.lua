return {
  tag = 'buffer-transfer',
  summary = 'Read back the contents of the Buffer asynchronously.',
  description = [[
    Creates and returns a new `Readback` that will download the data in the Buffer from VRAM. Once
    the readback is complete, `Readback:getData` returns the data as a table, or `Readback:getBlob`
    returns the data as a `Blob`.
  ]],
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A byte offset to read from.'
    },
    extent = {
      type = 'number',
      default = 'nil',
      description = 'The number of bytes to read.  If nil, reads the rest of the buffer.'
    }
  },
  returns = {
    readback = {
      type = 'Readback',
      description = 'A new Readback object.'
    }
  },
  variants = {
    {
      arguments = { 'offset', 'extent' },
      returns = { 'readback' }
    }
  },
  notes = [[
    The offset and extent arguments must be a multiple of the Buffer's stride (unless it was created
    without a format).
  ]],
  related = {
    'Buffer:getData',
    'Texture:newReadback'
  }
}
