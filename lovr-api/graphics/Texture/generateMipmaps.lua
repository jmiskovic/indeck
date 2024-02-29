return {
  tag = 'texture-transfer',
  summary = 'Regenerate mipmaps for a Texture.',
  description = [[
    Regenerates mipmap levels of a texture.  This downscales pixels from the texture to
    progressively smaller sizes and saves them.  If the texture is drawn at a smaller scale later,
    the mipmaps are used, which smooths out the appearance and improves performance.
  ]],
  arguments = {
    base = {
      type = 'number',
      default = '1',
      description = 'The base mipmap level which will be used to generate subsequent mipmaps.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of mipmap levels to generate.  If nil, the rest of the mipmaps will be generated.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'base', 'count' },
      returns = {}
    }
  },
  notes = [[
    Mipmaps will automatically be regenerated for textures after rendering to them in a `Pass`.
    This can be disabled by rendering to a single-level texture view instead.

    The texture must have been created with the `transfer` usage to mipmap it.

    The texture can not be multisampled.

    Texture views can not currently be mipmapped.
  ]],
  related = {
    'Texture:setPixels',
    'Texture:getMipmapCount'
  }
}
