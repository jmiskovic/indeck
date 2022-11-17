return {
  tag = 'input',
  summary = 'Check if a button on a device is touched.',
  description = 'Returns whether a button on a device is currently touched.',
  arguments = {
    device = {
      type = 'Device',
      description = 'The device.'
    },
    button = {
      type = 'DeviceButton',
      description = 'The button.'
    }
  },
  returns = {
    touched = {
      type = 'boolean',
      description = [[
        Whether the button on the device is currently touched, or `nil` if the device does not have
        the button or it isn't touch-sensitive.
      ]]
    }
  },
  variants = {
    {
      arguments = { 'device', 'button' },
      returns = { 'touched' }
    }
  },
  related = {
    'DeviceButton',
    'lovr.headset.isDown',
    'lovr.headset.getAxis'
  }
}
