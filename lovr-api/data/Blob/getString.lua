return {
  summary = 'Get the Blob\'s contents as a string.',
  description = 'Returns a binary string containing the Blob\'s data.',
  arguments = {
    offset = {
      type = 'number',
      default = '0',
      description = 'A byte offset into the Blob where the string will start.'
    },
    size = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of bytes the string will contain.  If nil, the rest of the data in the Blob will
        be used, based on the `offset` parameter.
      ]]
    }
  },
  returns = {
    data = {
      type = 'string',
      description = 'The Blob\'s data.'
    }
  },
  variants = {
    {
      arguments = { 'offset', 'size' },
      returns = { 'data' }
    }
  },
  notes = [[
    This effectively allocates a new copy of the Blob as a Lua string, so this should be avoided for
    really big Blobs!
  ]],
  example = {
    description = 'Print each byte of the main.lua file:',
    code = [[
      blob = lovr.filesystem.newBlob('main.lua')
      str = blob:getString()

      for i = 1, #str do
        print(string.byte(str, i))
      end
    ]]
  }
}
