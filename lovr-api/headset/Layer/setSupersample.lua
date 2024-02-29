return {
  summary = 'Set the supersample mode of the layer.',
  description = [[
    Sets the supersample mode for the layer.  This will improve quality when the layer is rendered
    at a smaller size than its texture resolution, at the cost of performance.  Supersampling is
    currently only supported on Quest devices.
  ]],
  arguments = {
    supersampled = {
      type = 'boolean',
      description = 'Whether supersampling should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'supersampled' },
      returns = {}
    }
  },
  related = {
    'Layer:getSharpen',
    'Layer:setSharpen'
  }
}
