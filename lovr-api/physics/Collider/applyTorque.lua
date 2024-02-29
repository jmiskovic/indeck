return {
  summary = 'Apply torque to the Collider.',
  description = 'Applies torque to the Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x component of the torque.'
    },
    y = {
      type = 'number',
      description = 'The y component of the torque.'
    },
    z = {
      type = 'number',
      description = 'The z component of the torque.'
    },
    torque = {
      type = 'Vec3',
      description = 'The torque to apply.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      arguments = { 'torque' },
      returns = {}
    }
  },
  notes = 'If the Collider is asleep, calling this function will wake it up.',
  related = {
    'Collider:applyForce'
  }
}
