return {
  tag = 'texture-transfer',
  summary = 'Replace pixels in the Texture.',
  description = [[
    Sets pixels in the texture.  The source data can be an `Image` with the pixels to upload, or
    another `Texture` object to copy from.
  ]],
  arguments = {
    image = {
      type = 'Image',
      description = 'The image to copy to the texture.'
    },
    texture = {
      type = 'Texture',
      description = 'The texture to copy from.'
    },
    dstx = {
      type = 'number',
      default = '0',
      description = 'The x offset to copy to.'
    },
    dsty = {
      type = 'number',
      default = '0',
      description = 'The y offset to copy to.'
    },
    dstlayer = {
      type = 'number',
      default = '1',
      description = 'The index of the layer to copy to.'
    },
    dstmipmap = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level to copy to.'
    },
    srcx = {
      type = 'number',
      default = '0',
      description = 'The x offset to copy from.'
    },
    srcy = {
      type = 'number',
      default = '0',
      description = 'The y offset to copy from.'
    },
    srclayer = {
      type = 'number',
      default = '1',
      description = 'The index of the layer to copy from.'
    },
    srcmipmap = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level to copy from.'
    },
    width = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the region of pixels to copy.  If nil, the maximum possible width will be used,
        based on the widths of the source/destination and the offset parameters.
      ]]
    },
    height = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the region of pixels to copy.  If nil, the maximum possible height will be
        used, based on the heights of the source/destination and the offset parameters.
      ]]
    },
    layers = {
      type = 'number',
      default = 'nil',
      description = 'The number of layers to copy.  If nil, copies as many layers as possible.'
    },
    srcwidth = {
      type = 'number',
      default = 'width',
      description = [[
        The width of the region in the source texture to copy.  If it doesn't match `width`, the
        copy will be scaled up or down to fit.
      ]]
    },
    srcheight = {
      type = 'number',
      default = 'width',
      description = [[
        The height of the region in the source texture to copy.  If it doesn't match `height`, the
        copy will be scaled up or down to fit.
      ]]
    },
    srcdepth = {
      type = 'number',
      default = 'layers',
      description = 'The depth of the region in the source texture to copy (`3d` textures only).'
    },
    filter = {
      type = 'FilterMode',
      default = [['linear']],
      description = [[
        The filtering mode used to scale the copy when the source and destination sizes don't match.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'image', 'dstx', 'dsty', 'dstlayer', 'dstmipmap', 'srcx', 'srcy', 'srclayer', 'srcmipmap', 'width', 'height', 'layers' },
      returns = {}
    },
    {
      arguments = { 'texture', 'dstx', 'dsty', 'dstlayer', 'dstmipmap', 'srcx', 'srcy', 'srclayer', 'srcmipmap', 'width', 'height', 'layers', 'srcwidth', 'srcheight', 'srcdepth', 'filter' },
      returns = {}
    }
  },
  notes = [[
    The destination and source textures must have been created with the `transfer` usage.

    Multisampled textures can not be copied.

    It is not currently possible to copy to or from a texture view.

    Copying between textures requires them to have the same format.

    When using different region sizes in a texture-to-texture copy:

    - It is not possible to mix 3D with non-3D textures.
    - Not every texture format is supported, use `lovr.graphics.isFormatSupported` to check.
  ]],
  related = {
    'Texture:newReadback',
    'Image:paste'
  }
}
