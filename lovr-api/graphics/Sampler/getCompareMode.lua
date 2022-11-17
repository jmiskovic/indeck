return {
  summary = 'Get the compare mode of the Sampler.',
  description = [[
    Returns the compare mode of the Sampler.  This is a feature typically only used for shadow
    mapping.  Using a sampler with a compare mode requires it to be declared in a shader as a
    `samplerShadow` instead of a `sampler` variable, and used with a texture that has a depth
    format.  The result of sampling a depth texture with a shadow sampler is a number between 0 and
    1, indicating the percentage of sampled pixels that passed the comparison.
  ]],
  arguments = {},
  returns = {
    compare = {
      type = 'CompareMode',
      description = 'The compare mode of the sampler.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'compare' }
    }
  },
  related = {
    'Sampler:getFilter',
    'Sampler:getWrap',
    'Sampler:getAnisotropy',
    'Sampler:getMipmapRange'
  }
}
