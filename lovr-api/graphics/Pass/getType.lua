return {
  deprecated = true,
  tag = 'pass-misc',
  summary = 'Get the type of the Pass.',
  description = [[
    Returns the type of the pass (render, compute, or transfer).  The type restricts what kinds of
    functions can be called on the pass.
  ]],
  arguments = {},
  returns = {
    type = {
      type = 'PassType',
      description = 'The type of the Pass.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'type' }
    }
  }
}
