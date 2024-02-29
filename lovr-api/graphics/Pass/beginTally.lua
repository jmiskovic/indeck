return {
  tag = 'tally',
  summary = 'Begin a tally.',
  description = [[
    Begins a new tally.  The tally will count the number of pixels touched by any draws that occur
    while the tally is active.  If a pixel fails the depth test or stencil test then it won't be
    counted, so the tally is a way to detect if objects are visible.

    The results for all the tallies in the pass can be copied to a `Buffer` when the Pass finishes
    by setting a buffer with `Pass:setTallyBuffer`.
  ]],
  arguments = {},
  returns = {
    index = {
      type = 'number',
      description = 'The index of the tally that was started.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'index' }
    }
  },
  notes = [[
    There is currently a maximum of 256 tallies per pass.

    If a tally is already active, this function will error.
  ]],
  related = {
    'Pass:finishTally'
  }
}
