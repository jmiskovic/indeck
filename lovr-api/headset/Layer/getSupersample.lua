return {
  summary = 'Get the supersample mode of the layer.',
  description = [[
    Returns whether the layer is supersampled.  This will improve quality when the layer is rendered
    at a smaller size than its texture resolution, at the cost of performance.  Supersampling is
    currently only supported on Quest devices.
  ]],
  arguments = {},
  returns = {
    supersampled = {
      type = 'boolean',
      description = 'Whether the layer is supersampled.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'supersampled' }
    }
  },
  related = {
    'Layer:getSharpen',
    'Layer:setSharpen'
  }
}
