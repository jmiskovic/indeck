return {
  tag = 'pass-misc',
  summary = 'Return the clear values of the Pass.',
  description = 'Returns the clear values of the pass.',
  arguments = {},
  returns = {
    clears = {
      type = 'table',
      description = [[
        The clear values for the pass.  Numeric keys will contain clear values for color textures,
        either as a table of r, g, b, a values or a boolean.  If the pass has a depth texture, there
        will also be `depth` and `stencil` keys containing the clear values or booleans.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'clears' }
    }
  },
  related = {
    'Pass:getTarget'
  }
}
