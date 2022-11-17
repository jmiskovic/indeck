return {
  summary = 'Get the filter mode of the Sampler.',
  description = 'Returns the filter mode of the Sampler.',
  arguments = {},
  returns = {
    min = {
      type = 'FilterMode',
      description = 'The filter mode used when the texture is minified.'
    },
    mag = {
      type = 'FilterMode',
      description = 'The filter mode used when the texture is magnified.'
    },
    mip = {
      type = 'FilterMode',
      description = 'The filter mode used to select a mipmap level.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'min', 'mag', 'mip' }
    }
  },
  related = {
    'Sampler:getWrap',
    'Sampler:getCompareMode',
    'Sampler:getAnisotropy',
    'Sampler:getMipmapRange'
  }
}
