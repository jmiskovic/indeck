return {
  summary = 'Get the Blob\'s contents as a string.',
  description = 'Returns a binary string containing the Blob\'s data.',
  arguments = {},
  returns = {
    data = {
      type = 'string',
      description = 'The Blob\'s data.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  },
  example = {
    description = 'Manually copy a file using Blobs:',
    code = [[
      blob = lovr.filesystem.newBlob('image.png')
      lovr.filesystem.write('copy.png', blob:getString())
    ]]
  }
}
