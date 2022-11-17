return {
  summary = 'Get Readback\'s data as a table.',
  description = 'Returns the data from the Readback, as a table.',
  arguments = {},
  returns = {
    data = {
      type = 'table',
      description = 'A flat table of numbers containing the values that were read back.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  },
  notes = [[
    This currently returns `nil` for readbacks of `Buffer` and `Texture` objects.  Only readbacks of
    `Tally` objects return valid data.

    For `time` and `pixel` tallies, the table will have 1 number per slot that was read.  For
    `shader` tallies, there will be 4 numbers for each slot.
  ]],
  related = {
    'Readback:getBlob',
    'Readback:getImage'
  }
}
