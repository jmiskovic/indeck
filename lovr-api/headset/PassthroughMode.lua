return {
  summary = 'Passthrough modes.',
  description = [[
    Different passthrough modes, set using `lovr.headset.setPassthrough`.

    For best results, the `blend` and `add` modes should use a transparent background color, which
    can be changed with `lovr.graphics.setBackgroundColor`.
  ]],
  values = {
    {
      name = 'opaque',
      description = [[
        The headset display will not blend with anything behind it.  Most VR headsets use this mode.
      ]]
    },
    {
      name = 'blend',
      description = [[
        The real world will blend with the headset display using the alpha channel.  This is
        supported on VR headsets with camera passthrough, as well as some AR displays.
      ]]
    },
    {
      name = 'add',
      description = [[
        Color values from virtual content will be added to the real world.  This is the most common
        mode used for AR.  Notably, black pixels will not show up at all.
      ]]
    }
  },
  related = {
    'lovr.headset.getPassthrough',
    'lovr.headset.setPassthrough',
    'lovr.headset.getPassthroughModes'
  }
}
