return {
  tag = 'headset',
  summary = 'Set the near and far clipping planes of the headset.',
  description = [[
    Sets the near and far clipping planes used to render to the headset.  Objects closer than the
    near clipping plane or further than the far clipping plane will be clipped out of view.
  ]],
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'near', 'far' },
      returns = {}
    }
  },
  notes = 'The default clip distances are 0.01 and 0.0.'
}
