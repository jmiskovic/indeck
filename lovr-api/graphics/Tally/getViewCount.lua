return {
  summary = 'Get the number of render Pass views the Tally is configured for.',
  description = [[
    Tally objects with the `time` type can only be used in render passes with a certain number of
    views.  This returns that number.
  ]],
  arguments = {},
  returns = {
    views = {
      type = 'number',
      description = 'The number of views the Tally is compatible with.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'views' }
    }
  }
}
