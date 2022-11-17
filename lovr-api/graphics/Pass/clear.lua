return {
  tag = 'transfer',
  summary = 'Clear a Buffer or Texture.',
  description = 'Clears a Buffer or Texture.',
  arguments = {
    buffer = {
      type = 'Buffer',
      description = 'The Buffer to clear.'
    },
    index = {
      type = 'number',
      default = '1',
      description = 'The index of the first item to clear.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = 'The number of items to clear.  If `nil`, clears to the end of the Buffer.'
    },
    texture = {
      type = 'Texture',
      description = 'The Texture to clear.'
    },
    color = {
      type = 'Vec4',
      description = [[
        The color to clear the texture to.  Can also be a `Vec3`, table of numbers, or a hexcode.
      ]]
    },
    layer = {
      type = 'number',
      default = '1',
      description = 'The index of the first layer to clear.'
    },
    layers = {
      type = 'number',
      default = 'nil',
      description = 'The number of layers to clear.  If `nil`, clears the remaining layers.'
    },
    level = {
      type = 'number',
      default = '1',
      description = 'The index of the first mipmap level to clear.'
    },
    levels = {
      type = 'number',
      default = 'nil',
      description = 'The number of mipmap level to clear.  If `nil`, clears the remaining mipmaps.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Clears a range of a Buffer, setting the values to zero.',
      arguments = { 'buffer', 'index', 'count' },
      returns = {}
    },
    {
      description = 'Clears layers and mipmap levels in a Texture to a color.',
      arguments = { 'texture', 'color', 'layer', 'layers', 'level', 'levels' },
      returns = {}
    }
  },
  related = {
    'Buffer:clear',
    'Pass:copy'
  }
}
