return {
  tag = 'transfer',
  summary = 'Download data from a GPU resource.',
  description = [[
    Creates a `Readback` object which asynchronously downloads data from a `Buffer`, `Texture`, or
    `Tally`.  The readback can be polled for completion, or, after this transfer pass is completed,
    `Readback:wait` can be used to block until the download is complete.
  ]],
  arguments = {
    buffer = {
      type = 'Buffer',
      description = 'The Buffer to download data from.'
    },
    texture = {
      type = 'Texture',
      description = 'The Texture to download data from.'
    },
    tally = {
      type = 'Tally',
      description = 'The Tally to download data from.'
    },
    index = {
      type = 'number',
      description = 'The index of the first item to download.'
    },
    count = {
      type = 'number',
      description = 'The number of items to download.'
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x offset of the region to download.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y offset of the region to download.'
    },
    layer = {
      type = 'number',
      default = '1',
      description = 'The index of the layer to download.'
    },
    level = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level to download.'
    },
    width = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the region to download.  If nil, the region will be as wide as possible.
      ]]
    },
    height = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the region to download.  If nil, the region will be as tall as possible.
      ]]
    }
  },
  returns = {
    readback = {
      type = 'Readback',
      description = 'The new readback.'
    }
  },
  variants = {
    {
      arguments = { 'buffer', 'index', 'count' },
      returns = { 'readback' }
    },
    {
      arguments = { 'texture', 'x', 'y', 'layer', 'level', 'width', 'height' },
      returns = { 'readback' }
    },
    {
      arguments = { 'tally', 'index', 'count' },
      returns = { 'readback' }
    }
  }
}
