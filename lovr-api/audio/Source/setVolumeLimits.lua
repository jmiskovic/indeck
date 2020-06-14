return {
  summary = 'Set the volume limits of the Source.',
  description = [[
    Sets the minimum and maximum volume of the Source.  These limits have priority over the
    parameters set by `Source:setFalloff` and `Source:setCone`, so they can be used to make sure a
    Source can always be heard even if it's far away.
  ]],
  arguments = {
    {
      name = 'min',
      type = 'number',
      description = 'The minimum volume of the Source.'
    },
    {
      name = 'max',
      type = 'number',
      description = 'The maximum volume of the Source.'
    }
  },
  returns = {}
}
