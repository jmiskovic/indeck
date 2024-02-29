return {
  summary = 'Set the sharpening mode of the layer.',
  description = [[
    Sets the sharpen mode for the layer.  This will improve quality when the layer is rendered at a
    larger size than its texture resolution, at the cost of performance.  Sharpening is currently
    only supported on Quest devices.
  ]],
  arguments = {
    sharpen = {
      type = 'boolean',
      description = 'Whether sharpening should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'sharpen' },
      returns = {}
    }
  },
  related = {
    'Layer:getSupersample',
    'Layer:setSupersample'
  }
}
