return {
  summary = 'Check if a Readback is complete.',
  description = 'Returns whether the Readback has completed on the GPU and its data is available.',
  arguments = {},
  returns = {
    complete = {
      type = 'boolean',
      description = 'Whether the readback is complete.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'complete' }
    }
  }
}
