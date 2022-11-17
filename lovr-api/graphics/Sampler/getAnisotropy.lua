return {
  summary = 'Get the anisotropy level of the Sampler.',
  description = [[
    Returns the anisotropy level of the Sampler.  Anisotropy smooths out a texture's appearance when
    viewed at grazing angles.
  ]],
  arguments = {},
  returns = {
    anisotropy = {
      type = 'number',
      description = 'The anisotropy level of the sampler.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'anisotropy' }
    }
  },
  notes = [[
    Not all GPUs support anisotropy.  The maximum anisotropy level is given by the `anisotropy`
    limit of `lovr.graphics.getLimits`, which may be zero.  It's very common for the maximum to be
    16, however.
  ]],
  related = {
    'Sampler:getFilter',
    'Sampler:getWrap',
    'Sampler:getCompareMode',
    'Sampler:getMipmapRange'
  }
}
