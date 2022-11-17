return {
  summary = 'Get the type of the Tally.',
  description = [[
    Returns the type of the tally, which is the thing it measures between `Pass:tick` and
    `Pass:tock`.
  ]],
  arguments = {},
  returns = {
    type = {
      type = 'TallyType',
      description = 'The type of measurement.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'type' }
    }
  },
  related = {
    'lovr.graphics.newTally'
  }
}
