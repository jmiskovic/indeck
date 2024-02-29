return {
  tag = 'headset-misc',
  summary = 'Get the VR API currently in use for a device.',
  description = [[
    Returns the `HeadsetDriver` that is currently in use, plus the name of the VR runtime.  The
    order of headset drivers can be changed using `lovr.conf`.
  ]],
  arguments = {},
  returns = {
    driver = {
      type = 'HeadsetDriver',
      description = 'The current headset backend, e.g. `openxr` or `simulator`.'
    },
    runtime = {
      type = 'string',
      description = 'The name of the VR runtime, e.g. `SteamVR/OpenXR`.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'driver', 'runtime' }
    }
  },
  related = {
    'lovr.headset.getName'
  }
}
