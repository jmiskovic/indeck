return {
  tag = 'input',
  summary = 'Get the pose of a device.',
  description = 'Returns the current position and orientation of a device.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the pose of.'
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x position.'
    },
    y = {
      type = 'number',
      description = 'The y position.'
    },
    z = {
      type = 'number',
      description = 'The z position.'
    },
    angle = {
      type = 'number',
      description = 'The amount of rotation around the axis of rotation, in radians.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis of rotation.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' }
    }
  },
  notes = [[
    Units are in meters.

    If the device isn't tracked, all zeroes will be returned.
  ]],
  related = {
    'lovr.headset.getPosition',
    'lovr.headset.getOrientation',
    'lovr.headset.getVelocity',
    'lovr.headset.getAngularVelocity',
    'lovr.headset.getSkeleton',
    'lovr.headset.isTracked',
    'lovr.headset.getDriver'
  }
}
