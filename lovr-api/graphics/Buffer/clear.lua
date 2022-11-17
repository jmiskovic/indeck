return {
  summary = 'Clear the data in the Buffer.',
  description = [[
    Clears some or all of the data in the **temporary** Buffer to zero.  Permanent Buffers can be
    cleared in a transfer pass using `Pass:clear`.
  ]],
  arguments = {
    index = {
      type = 'number',
      default = '1',
      description = 'The index of the first item to clear.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = 'The number of items to clear.  If `nil`, clears to the end of the Buffer.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'count' },
      returns = {}
    }
  },
  notes = [[
    Clearing a permanent buffer requires the byte offset and byte count of the cleared range to be a
    multiple of 4.  This will usually be true for most data types.
  ]],
  related = {
    'Pass:clear'
  }
}
