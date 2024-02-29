return {
  summary = 'Get Readback\'s data as a table.',
  description = [[
    Returns the data from the Readback, as a table.  See `Buffer:getData` for the way the table is
    structured.
  ]],
  arguments = {},
  returns = {
    data = {
      type = 'table',
      description = 'A table containing the data that was read back.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  },
  notes = 'This returns `nil` for readbacks of `Texture` objects.',
  related = {
    'Readback:getBlob',
    'Readback:getImage'
  }
}
