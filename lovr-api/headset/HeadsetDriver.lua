return {
  summary = 'VR APIs.',
  description = [[
    These are all of the supported VR APIs that LÖVR can use to power the lovr.headset module.  You
    can change the order of headset drivers using `lovr.conf` to prefer or exclude specific VR APIs.

    At startup, LÖVR searches through the list of drivers in order.
  ]],
  values = {
    {
      name = 'desktop',
      description = 'A VR simulator using keyboard/mouse.'
    },
    {
      name = 'openxr',
      description = 'OpenXR.'
    }
  }
}
