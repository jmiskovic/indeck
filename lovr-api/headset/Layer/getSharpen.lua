return {
  summary = 'Get the sharpening mode of the layer.',
  description = [[
    Returns whether the layer is sharpened.  This will improve quality when the layer is rendered at
    a larger size than its texture resolution, at the cost of performance.  Sharpening is currently
    only supported on Quest devices.
  ]],
  arguments = {},
  returns = {
    sharpen = {
      type = 'boolean',
      description = 'Whether the layer is sharpened.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'sharpen' }
    }
  },
  related = {
    'Layer:getSupersample',
    'Layer:setSupersample'
  }
}
