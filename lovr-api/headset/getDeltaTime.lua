return {
  tag = 'headset-misc',
  summary = 'Get the predicted delta time.',
  description = [[
    Returns the headset delta time, which is the difference between the current and previous
    predicted display times.  When the headset is active, this will be the `dt` value passed in to
    `lovr.update`.
  ]],
  arguments = {},
  returns = {
    dt = {
      type = 'number',
      description = 'The delta time.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'dt' }
    }
  },
  related = {
    'lovr.headset.getTime',
    'lovr.timer.getTime',
    'lovr.timer.getDelta'
  }
}
