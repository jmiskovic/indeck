return {
  tag = 'transfer',
  summary = 'Copy data to or between GPU resources.',
  description = [[
    Copies data to or between `Buffer` and `Texture` objects.  This function must be called on a
    `transfer` pass.
  ]],
  arguments = {
    table = {
      type = 'table',
      description = 'A table to copy to the buffer.'
    },
    blob = {
      type = 'Blob',
      description = 'A blob to copy to the buffer.'
    },
    buffersrc = {
      type = 'Buffer',
      description = 'A buffer to copy to the buffer.'
    },
    image = {
      type = 'Image',
      description = 'An image to copy to the texture.'
    },
    texturesrc = {
      type = 'Texture',
      description = 'A texture to copy to the texture.'
    },
    tally = {
      type = 'Tally',
      description = 'A tally to copy to the buffer.'
    },
    bufferdst = {
      type = 'Buffer',
      description = 'The buffer to copy to.'
    },
    texturedst = {
      type = 'Texture',
      description = 'The texture to copy to.'
    },
    srcindex = {
      type = 'number',
      default = '1',
      description = 'The index of the first item to begin copying from.'
    },
    dstindex = {
      type = 'number',
      default = '1',
      description = 'The index of the first item in the buffer to begin copying to.'
    },
    srcoffset = {
      type = 'number',
      default = '0',
      description = 'A byte offset to begin copying from.'
    },
    dstoffset = {
      type = 'number',
      default = '0',
      description = 'A byte offset in the buffer to begin copying to.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = 'The number of items to copy.  If nil, copies as many items as possible.'
    },
    size = {
      type = 'number',
      default = 'nil',
      description = 'The number of bytes to copy.  If nil, copies as many bytes as possible.'
    },
    srcx = {
      type = 'number',
      default = '0',
      description = 'The x offset of the region in the source texture to copy.'
    },
    srcy = {
      type = 'number',
      default = '0',
      description = 'The y offset of the region in the source texture to copy.'
    },
    dstx = {
      type = 'number',
      default = '0',
      description = 'The x offset of the region in the destination texture to copy to.'
    },
    dsty = {
      type = 'number',
      default = '0',
      description = 'The y offset of the region in the destination texture to copy to.'
    },
    width = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the region to copy.  If nil, makes the region as wide as possible.
      ]]
    },
    height = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the region to copy.  If nil, makes the region as tall as possible.
      ]]
    },
    srclayer = {
      type = 'number',
      default = '1',
      description = 'The index of the first layer in the source texture to copy.'
    },
    dstlayer = {
      type = 'number',
      default = '1',
      description = 'The index of the layer in the destination texture to copy to.'
    },
    layers = {
      type = 'number',
      default = 'nil',
      description = 'The number of layers to copy.  If nil, copies as many layers as possible.'
    },
    srclevel = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level in the source texture to copy.'
    },
    dstlevel = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level in the destination texture to copy to.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Copy a table to a Buffer.',
      arguments = { 'table', 'bufferdst', 'srcindex', 'dstindex', 'count' },
      returns = {}
    },
    {
      description = 'Copy a Blob to a Buffer.',
      arguments = { 'blob', 'bufferdst', 'srcoffset', 'dstoffset', 'size' },
      returns = {}
    },
    {
      description = 'Copy a Buffer to a Buffer.',
      arguments = { 'buffersrc', 'bufferdst', 'srcoffset', 'dstoffset', 'size' },
      returns = {}
    },
    {
      description = 'Copy an Image to a Texture.',
      arguments = { 'image', 'texturedst', 'srcx', 'srcy', 'dstx', 'dsty', 'width', 'height', 'srclayer', 'dstlayer', 'layers', 'srclevel', 'dstlevel' },
      returns = {}
    },
    {
      description = 'Copy a Texture to a Texture.',
      arguments = { 'texturesrc', 'texturedst', 'srcx', 'srcy', 'dstx', 'dsty', 'width', 'height', 'srclayer', 'dstlayer', 'layers', 'srclevel', 'dstlevel' },
      returns = {}
    },
    {
      description = [[
        Copy a Tally to a Buffer.  The size of each item depends on what the tally is measuring:

        - `time` tally slots are a single 4-byte unsigned integer.
        - `shader` tally slots are four 4-byte unsigned integers (16 bytes).
        - `pixel` tally slots are a single 4-byte unsigned integer.
      ]],
      arguments = { 'tally', 'bufferdst', 'srcindex', 'dstoffset', 'count' },
      returns = {}
    }
  }
}
