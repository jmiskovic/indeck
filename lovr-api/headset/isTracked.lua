return {
  tag = 'input',
  summary = 'Check if a device is currently tracked.',
  description = [[
    Returns whether any active headset driver is currently returning pose information for a device.
  ]],
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the pose of.'
    }
  },
  returns = {
    tracked = {
      type = 'boolean',
      description = 'Whether the device is currently tracked.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'tracked' }
    }
  },
  notes = [[
    If a device is tracked, it is guaranteed to return a valid pose until the next call to
    `lovr.headset.update`.
  ]]
}
