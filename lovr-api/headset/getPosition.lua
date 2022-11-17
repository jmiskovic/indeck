return {
  tag = 'input',
  summary = 'Get the position of a device.',
  description = 'Returns the current position of a device, in meters, relative to the play area.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the position of.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the device.'
    },
    y = {
      type = 'number',
      description = 'The y position of the device.'
    },
    z = {
      type = 'number',
      description = 'The z position of the device.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'x', 'y', 'z' }
    }
  },
  notes = ' If the device isn\'t tracked, all zeroes will be returned.',
  related = {
    'lovr.headset.getPose',
    'lovr.headset.getOrientation',
    'lovr.headset.getVelocity',
    'lovr.headset.getAngularVelocity',
    'lovr.headset.isTracked',
    'lovr.headset.getDriver'
  }
}
