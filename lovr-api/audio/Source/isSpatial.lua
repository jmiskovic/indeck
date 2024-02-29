return {
  tag = 'sourceEffects',
  summary = 'Check if the Source is spatial.',
  description = [[
    Returns whether the Source was created with the `spatial` flag.  Non-spatial sources are routed
    directly to the speakers and can not use effects.
  ]],
  arguments = {},
  returns = {
    spatial = {
      type = 'boolean',
      description = 'Whether the source is spatial.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'spatial' }
    }
  },
  related = {
    'Source:isEffectEnabled',
    'Source:setEffectEnabled'
  }
}
