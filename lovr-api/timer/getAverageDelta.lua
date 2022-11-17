return {
  summary = 'Get the average delta over the last second.',
  description = 'Returns the average delta over the last second.',
  arguments = {},
  returns = {
    delta = {
      type = 'number',
      description = 'The average delta, in seconds.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'delta' }
    }
  },
  related = {
    'lovr.timer.getDelta',
    'lovr.update'
  }
}
