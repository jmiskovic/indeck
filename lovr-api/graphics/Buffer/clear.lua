return {
  tag = 'buffer-transfer',
  summary = 'Clear data in the Buffer.',
  description = 'Clears a range of data in the Buffer to a value.',
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = [[
        The offset of the range of the Buffer to clear, in bytes.  Must be a multiple of 4.
      ]]
    },
    extent = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of bytes to clear.  If `nil`, clears to the end of the Buffer.  Must be a
        multiple of 4.
      ]]
    },
    value = {
      type = 'number',
      default = '0x00000000',
      description = [[
        The value to clear to.  This will be interpreted as a 32 bit number, which will be repeated
        across the clear range.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'offset', 'extent', 'value' },
      returns = {}
    }
  },
  related = {
    'Texture:clear'
  }
}
