return {
  tag = 'tallies',
  summary = 'Start a GPU measurement.',
  description = [[
    Starts a GPU measurement.  One of the slots in a `Tally` object will be used to hold the result.
    Commands on the Pass will continue being measured until `Pass:tock` is called with the same
    tally and slot combination.  Afterwards, `Pass:read` can be used to read back the tally result,
    or the tally can be copied to a `Buffer`.
  ]],
  arguments = {
    tally = {
      type = 'Tally',
      description = 'The tally that will store the measurement.'
    },
    slot = {
      type = 'number',
      description = 'The index of the slot in the tally to store the measurement in.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'tally', 'slot' },
      returns = {}
    }
  },
  notes = [[
    `pixel` and `shader` measurements can not be nested, but `time` measurements can be nested.

    For `time` measurements, the view count of the pass (`Pass:getViewCount`) must match the view
    count of the tally, which defaults to `2`.
  ]],
  related = {
    'Pass:tock',
    'TallyType',
    'Pass:read'
  }
}
