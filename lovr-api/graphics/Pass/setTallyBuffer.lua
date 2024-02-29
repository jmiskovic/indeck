return {
  tag = 'tally',
  summary = 'Set the Buffer that tally results will be written to.',
  description = [[
    Sets the Buffer where tally results will be written to.  Each time the render pass finishes, the
    results of all the tallies will be copied to the Buffer at the specified offset.  The buffer can
    be used in a later pass in a compute shader, or the data in the buffer can be read back using
    e.g. `Buffer:newReadback`.
  ]],
  arguments = {
    buffer = {
      type = 'Buffer',
      description = 'The buffer.'
    },
    offset = {
      type = 'number',
      description = 'A byte offset where results will be written.  Must be a multiple of 4.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'buffer', 'offset' },
      returns = {}
    },
    {
      description = 'Unset the tally buffer.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    Each tally result is a 4-byte unsigned integer with the number of samples that passed the depth
    and stencil tests.

    If the buffer doesn't have enough room to store all the tallies, the number of tallies copied
    will be clamped to the minimum number that will fit.
  ]],
  related = {
    'Pass:beginTally',
    'Pass:finishTally'
  }
}
