return {
  summary = 'Get the current time.',
  description = [[
    Returns the time since some time in the past.  This can be used to measure the difference
    between two points in time.
  ]],
  arguments = {},
  returns = {
    time = {
      type = 'number',
      description = 'The current time, in seconds.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'time' }
    }
  },
  related = {
    'lovr.headset.getTime'
  }
}
