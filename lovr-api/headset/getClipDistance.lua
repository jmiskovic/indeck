return {
  tag = 'headset',
  summary = 'Get the near and far clipping planes of the headset.',
  description = [[
    Returns the near and far clipping planes used to render to the headset.  Objects closer than the
    near clipping plane or further than the far clipping plane will be clipped out of view.
  ]],
  arguments = {},
  returns = {
    near = {
      type = 'number',
      description = 'The distance to the near clipping plane, in meters.'
    },
    far = {
      type = 'number',
      description = [[
        The distance to the far clipping plane, in meters, or 0 for an infinite far clipping plane
        with a reversed Z range.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'near', 'far' }
    }
  },
  notes = [[
    The default near and far clipping planes are 0.01 meters and 0.0 meters.
  ]]
}
