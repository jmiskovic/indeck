return {
  tag = 'input',
  summary = 'Get the direction a device is pointing.',
  description = 'Returns the direction a device is pointing.  It will always be normalized.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the direction of.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x component of the direction.'
    },
    y = {
      type = 'number',
      description = 'The y component of the direction.'
    },
    z = {
      type = 'number',
      description = 'The z component of the direction.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'x', 'y', 'z' }
    }
  },
  notes = [[
    If the device isn't tracked, all zeroes will be returned.

    This is the same as `quat(lovr.headset.getOrientation(device)):direction():unpack()`.
  ]],
  related = {
    'lovr.headset.getPose',
    'lovr.headset.getOrientation',
    'lovr.headset.getVelocity',
    'lovr.headset.getAngularVelocity',
    'lovr.headset.isTracked',
    'lovr.headset.getDriver'
  }
}
