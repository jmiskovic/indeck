return {
  summary = 'Get the FilterMode for the Texture.',
  description = 'Returns the current FilterMode for the Texture.',
  arguments = {},
  returns = {
    {
      name = 'mode',
      type = 'FilterMode',
      description = 'The filter mode for the Texture.'
    },
    {
      name = 'anisotropy',
      type = 'number',
      description = [[
        If the filtering mode is "anisotropic", returns the level of anisotropy.  Otherwise, this
        will be nil.
      ]]
    }
  }
}
