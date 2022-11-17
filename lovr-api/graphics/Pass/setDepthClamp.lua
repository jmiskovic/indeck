return {
  tag = 'pipeline',
  summary = 'Enable or disable depth clamp.',
  description = [[
    Enables or disables depth clamp.  Normally, when pixels fall outside of the clipping planes,
    they are clipped (not rendered).  Depth clamp will instead render these pixels, clamping their
    depth on to the clipping planes.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether depth clamp should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  notes = [[
    This isn\'t supported on all GPUs.  Use the `depthClamp` feature of `lovr.graphics.getFeatures`
    to check for support.  If depth clamp is enabled when unsupported, it will silently fall back to
    depth clipping.

    Depth clamping is not enabled by default.
  ]],
  related = {
    'Pass:setDepthTest',
    'Pass:setDepthWrite',
    'Pass:setDepthOffset'
  }
}
