return {
  tag = 'graphicsState',
  summary = 'Set the default filter mode for Textures.',
  description = [[
    Sets the default filter mode for new Textures.  This controls how textures are sampled when they
    are minified, magnified, or stretched.
  ]],
  arguments = {
    {
      name = 'mode',
      type = 'FilterMode',
      description = 'The filter mode.'
    },
    {
      name = 'anisotropy',
      type = 'number',
      description = [[
        If the filtering mode is "anisotropic", returns the level of anisotropy.  Otherwise, this
        will be nil.
      ]]
    }
  },
  returns = {},
  notes = 'The default filter is `trilinear`.',
  related = {
    'Texture:getFilter',
    'Texture:setFilter'
  }
}
