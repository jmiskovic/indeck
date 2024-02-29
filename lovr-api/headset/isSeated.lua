return {
  tag = 'playArea',
  summary = 'Check if the coordinate space is standing or seated.',
  description = [[
    Returns whether the headset coordinate space is in seated mode.

    Seated mode is enabled by setting `t.headset.seated` to true in `lovr.conf`.  In seated mode,
    `y=0` will be at eye level, instead of on the floor like in standing-scale experiences.

    The seated coordinate space can be more convenient for applications that are rendering a simple
    interface in front of the user (like a video player) instead of a roomscale 3D scene.  y=0 will
    also be at the correct height at startup, whether the user is sitting or standing.
  ]],
  arguments = {},
  returns = {
    seated = {
      type = 'boolean',
      description = 'Whether the experience is seated.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'seated' }
    }
  },
  related = {
    'lovr.conf',
    'lovr.recenter'
  }
}
