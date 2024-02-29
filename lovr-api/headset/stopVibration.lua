return {
  tag = 'input',
  summary = 'Stop vibration on a device.',
  description = 'Causes the device to stop any active haptics vibration.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to stop the vibration on.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'device' },
      returns = {}
    }
  },
  related = {
    'lovr.headset.vibrate'
  }
}
