return {
  tag = 'tallies',
  summary = 'Stop a GPU measurement.',
  description = [[
    Stops a GPU measurement.  `Pass:tick` must be called to start the measurement before this can be
    called.  Afterwards, `Pass:read` can be used to read back the tally result, or the tally can be
    copied to a `Buffer`.
  ]],
  arguments = {
    tally = {
      type = 'Tally',
      description = 'The tally storing the measurement.'
    },
    slot = {
      type = 'number',
      description = 'The index of the slot in the tally storing the measurement.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'tally', 'slot' },
      returns = {}
    }
  },
  related = {
    'Pass:tick',
    'TallyType',
    'Pass:read'
  }
}
