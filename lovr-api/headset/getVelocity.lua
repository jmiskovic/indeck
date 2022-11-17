return {
  tag = 'input',
  summary = 'Get the linear velocity of a device.',
  description = 'Returns the current linear velocity of a device, in meters per second.',
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to get the velocity of.'
    }
  },
  returns = {
    vx = {
      type = 'number',
      description = 'The x component of the linear velocity.'
    },
    vy = {
      type = 'number',
      description = 'The y component of the linear velocity.'
    },
    vz = {
      type = 'number',
      description = 'The z component of the linear velocity.'
    }
  },
  variants = {
    {
      arguments = { 'device' },
      returns = { 'vx', 'vy', 'vz' }
    }
  },
  related = {
    'lovr.headset.getAngularVelocity',
    'lovr.headset.getPose',
    'lovr.headset.getPosition',
    'lovr.headset.getOrientation'
  }
}
