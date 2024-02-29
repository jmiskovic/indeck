return {
  tag = 'texture-metadata',
  summary = 'Get the number of mipmap levels in the Texture.',
  description = 'Returns the number of mipmap levels in the Texture.',
  arguments = {},
  returns = {
    mipmaps = {
      type = 'number',
      description = 'The number of mipmap levels in the Texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'mipmaps' }
    }
  },
  related = {
    'lovr.graphics.newTexture',
    'Sampler:getMipmapRange',
    'Texture:generateMipmaps'
  }
}
