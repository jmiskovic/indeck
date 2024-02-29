return {
  tag = 'canvas',
  summary = 'Return the clear values of the Pass.',
  description = 'Returns the clear values of the pass.',
  arguments = {},
  returns = {
    clears = {
      type = 'table',
      description = [[
        The clear values for the pass.  Each color texture's clear value is stored at its index, as
        either a 4-number rgba table or a boolean.  If the pass has a depth texture, there will also
        be a `depth` key with its clear value as a number or boolean.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'clears' }
    }
  },
  notes = 'The default clear color is transparent black.',
  related = {
    'Pass:getCanvas'
  }
}
