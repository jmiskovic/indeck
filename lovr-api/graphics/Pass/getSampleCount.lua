return {
  tag = 'pass-misc',
  summary = 'Get the antialiasing setting of a render pass.',
  description = 'Returns the antialiasing setting of a render pass.',
  arguments = {},
  returns = {
    samples = {
      type = 'number',
      description = 'The number of samples used for rendering.  Currently, will be 1 or 4.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'samples' }
    }
  }
}
