return {
  tag = 'callbacks',
  summary = 'Called when the application gains or loses visibility.',
  description = [[
    The `lovr.visible` callback is called whenever the application becomes visible or invisible.
    `lovr.draw` may still be called even while invisible to give the VR runtime timing info.  If the
    VR runtime decides the application doesn't need to render anymore, LÖVR will detect this and
    stop calling `lovr.draw`.
  ]],
  arguments = {
    {
      name = 'visible',
      type = 'boolean',
      description = 'Whether the application is visible in the headset display.'
    }
  },
  returns = {},
  related = {
    'lovr.headset.isVisible',
    'lovr.focus'
  }
}
