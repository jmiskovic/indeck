return {
  tag = 'texture-transfer',
  summary = 'Get the pixels of the Texture.',
  description = [[
    Creates and returns a new `Image` object with the current pixels of the Texture.  This function
    is very very slow because it stalls the CPU until the download is complete.  It should only be
    used for debugging, non-interactive scripts, etc.  For an asynchronous version that doesn't
    stall the CPU, see `Texture:newReadback`.
  ]],
  arguments = {
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
    mipmap = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level to download.'
    },
    width = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the pixel rectangle to download.  If nil, the "rest" of the width will be used,
        based on the texture width and x offset.
      ]]
    },
    height = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the pixel rectangle to download.  If nil, the "rest" of the height will be
        used, based on the texture height and y offset.
      ]]
    }
  },
  returns = {
    image = {
      type = 'Image',
      description = 'The new image with the pixels.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'layer', 'mipmap', 'width', 'height' },
      returns = { 'image' }
    }
  },
  notes = [[
    The texture must have been created with the `transfer` usage.

    Multisampled textures can not be read back.

    It is not currently possible to read back a texture view.
  ]],
  related = {
    'Texture:newReadback'
  }
}
