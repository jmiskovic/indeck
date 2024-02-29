return {
  tag = 'headset',
  summary = 'Change current passthrough mode.',
  description = [[
    Sets a new passthrough mode.  Not all headsets support all passthrough modes.  Use
    `lovr.headset.getPassthroughModes` to see which modes are supported.
  ]],
  arguments = {
    transparent = {
      type = 'boolean',
      description = [[
        Whether the headset should use a transparent passthrough mode.  When false, this will
        request the `opaque` mode.  When true, either `blend` or `add` will be requested, based on
        what the VR runtime supports.
      ]]
    },
    mode = {
      type = 'PassthroughMode',
      description = 'The passthrough mode to request.'
    }
  },
  returns = {
    success = {
      type = 'boolean',
      description = 'Whether the passthrough mode was supported and successfully enabled.'
    }
  },
  variants = {
    {
      arguments = { 'mode' },
      returns = { 'success' }
    },
    {
      arguments = { 'transparent' },
      returns = { 'success' }
    },
    {
      description = 'Switch to the headset\'s default passthrough mode.',
      arguments = {},
      returns = { 'success' }
    },
  },
  notes = [[
    When using one of the transparent passthrough modes, be sure to set the alpha of the background
    color to zero using `lovr.graphics.setBackgroundColor`, so the background shows through.
  ]],
  related = {
    'lovr.headset.getPassthroughModes'
  }
}
