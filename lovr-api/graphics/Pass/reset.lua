return {
  tag = 'pass-misc',
  summary = 'Reset the Pass.',
  description = [[
    Resets the Pass, clearing all of its draws and computes and resetting all of its state to the
    default values.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    The following things won't be reset:

    - Pass canvas, set with `Pass:setCanvas`.
    - Pass clears, set with `Pass:setClear`.
    - The tally buffer, set with `Pass:setTallyBuffer`.
  ]]
}
