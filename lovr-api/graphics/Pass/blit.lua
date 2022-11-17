return {
  tag = 'transfer',
  summary = 'Copy data between textures with scaling.',
  description = [[
    Copies data between textures.  Similar to `Pass:copy`, except the source and destination sizes
    can be different.  The pixels from the source texture will be scaled to the destination size.
  ]],
  arguments = {
    src = {
      type = 'Texture',
      description = 'The texture to copy from.'
    },
    dst = {
      type = 'Texture',
      description = 'The texture to copy to.'
    },
    srcx = {
      type = 'number',
      default = '0',
      description = 'The x offset from the left of the source texture to blit from, in pixels.'
    },
    srcy = {
      type = 'number',
      default = '0',
      description = 'The y offset from the top of the source texture to blit from, in pixels.'
    },
    srcz = {
      type = 'number',
      default = '1',
      description = 'The index of the first layer in the source texture to blit from.'
    },
    dstx = {
      type = 'number',
      default = '0',
      description = 'The x offset from the left of the destination texture to blit to, in pixels.'
    },
    dsty = {
      type = 'number',
      default = '0',
      description = 'The y offset from the top of the destination texture to blit to, in pixels.'
    },
    dstz = {
      type = 'number',
      default = '1',
      description = 'The index of the first layer in the destination texture to blit to.'
    },
    srcw = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the region in the source texture to blit.  If nil, the region will extend to
        the right side of the texture.
      ]]
    },
    srch = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the region in the source texture to blit.  If nil, the region will extend to
        the bottom of the texture.
      ]]
    },
    srcd = {
      type = 'number',
      default = 'nil',
      description = 'The number of layers in the source texture to blit.'
    },
    dstw = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the region in the destination texture to blit to.  If nil, the region will
        extend to the right side of the texture.
      ]]
    },
    dsth = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the region in the destination texture to blit to.  If nil, the region will
        extend to the bottom of the texture.
      ]]
    },
    dstd = {
      type = 'number',
      default = 'nil',
      description = 'The number of the layers in the destination texture to blit to.'
    },
    srclevel = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level in the source texture to blit from.'
    },
    dstlevel = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level in the destination texture to blit to.'
    },
    filter = {
      type = 'FilterMode',
      default = 'linear',
      description = 'The filtering algorithm used when rescaling.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'src', 'dst', 'srcx', 'srcy', 'srcz', 'dstx', 'dsty', 'dstz', 'srcw', 'srch', 'srcd', 'dstw', 'dsth', 'dstd', 'srclevel', 'dstlevel', 'filter' },
      returns = {}
    }
  },
  notes = [[
    When blitting between 3D textures, the layer counts do not need to match, and the layers will be
    treated as a continuous axis (i.e. pixels will be smoothed between layers).

    When blitting between array textures, the layer counts must match, and the blit occurs
    as a sequence of distinct 2D blits layer-by-layer.
  ]]
}
