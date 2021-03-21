return {
  summary = 'Check if an effect is enabled.',
  description = 'Returns whether a given `Effect` is enabled for the Source.',
  arguments = {
    {
      name = 'effect',
      type = 'Effect',
      description = 'The effect.'
    }
  },
  returns = {
    {
      name = 'enabled',
      type = 'boolean',
      description = 'Whether the effect is enabled.'
    }
  },
  notes = [[
    The active spatializer will determine which effects are supported.  If an unsupported effect is
    enabled on a Source, no error will be reported.  Instead, it will be silently ignored (this
    function will still report it as enabled).

    TODO: expose a table of supported effects for spatializers in docs or from Lua.
  ]]
}
