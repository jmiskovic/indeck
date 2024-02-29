return {
  tag = 'input',
  summary = 'Get the angular velocity of a device.',
  description = 'Returns the current angular velocity of a device.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the velocity of.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x component of the angular velocity.'
    },
    y = {
      type = 'number',
      description = 'The y component of the angular velocity.'
    },
    z = {
      type = 'number',
      description = 'The z component of the angular velocity.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'x', 'y', 'z' }
    }
  },
  notes = 'If the device isn\'t tracked, all zeroes will be returned.',
  related = {
    'lovr.headset.getVelocity',
    'lovr.headset.getPosition',
    'lovr.headset.getOrientation'
  }
}
