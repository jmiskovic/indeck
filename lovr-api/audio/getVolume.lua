return {
  tag = 'listener',
  summary = 'Get the master volume.',
  description = [[
    Returns the master volume.  All Source objects have their volume multiplied by this factor.
  ]],
  arguments = {},
  returns = {
    {
      name = 'volume',
      type = 'number',
      description = 'The master volume.'
    }
  },
  notes = 'The default is 1.0.'
}
