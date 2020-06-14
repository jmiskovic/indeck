return {
  tag = 'listener',
  summary = 'Set the master volume.',
  description = [[
    Sets the master volume.  The volume of all Sources will be multiplied by this factor.
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
