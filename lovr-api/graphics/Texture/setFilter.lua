return {
  summary = 'Set the FilterMode for the Texture.',
  description = 'Sets the `FilterMode` used by the texture.',
  arguments = {
    {
      name = 'mode',
      type = 'FilterMode',
      description = 'The filter mode.'
    },
    {
      name = 'anisotropy',
      type = 'number',
      description = 'The level of anisotropy to use when using anisotropic filtering.'
    }
  },
  returns = {},
  notes = [[
    The default setting for new textures can be set with `lovr.graphics.setDefaultFilter`.
  ]],
  related = {
    'lovr.graphics.getDefaultFilter',
    'lovr.graphics.setDefaultFilter'
  }
}
