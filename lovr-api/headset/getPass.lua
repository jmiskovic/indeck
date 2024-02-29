return {
  tag = 'headset-misc',
  summary = 'Get a Pass that renders to the headset.',
  description = 'Returns a `Pass` that renders to the headset display.',
  arguments = {},
  returns = {
    pass = {
      type = 'Pass',
      description = 'The pass.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'pass' }
    }
  },
  notes = [[
    The same Pass will be returned until `lovr.headset.submit` is called.

    The first time this function is called during a frame, the views of the Pass will be initialized
    with the headset view poses and view angles.

    The pass will be cleared to the background color, which can be changed using
    `lovr.graphics.setBackgroundColor`.

    The pass will have a depth buffer.  If `t.headset.stencil` was set to a truthy value in
    `lovr.conf`, the depth buffer will use the `d32fs8` format, otherwise `d32f` will be used.

    If `t.headset.antialias` was set to a truthy value in `lovr.conf`, the pass will be
    multisampled.
  ]],
  related = {
    'lovr.graphics.newPass',
    'lovr.graphics.getWindowPass',
    'lovr.conf'
  }
}
