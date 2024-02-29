return {
  summary = 'Apply a rotation to the vector.',
  description = 'Applies a rotation to the vector, using a `Quat` or an angle/axis rotation.',
  arguments = {
    q = {
      type = 'Quat',
      description = 'The quaternion to apply.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians to rotate.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis to rotate around.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis to rotate around.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis to rotate around.'
    }
  },
  returns = {
    self = {
      type = 'Vec3',
      description = 'The modified vector.'
    }
  },
  variants = {
    {
      arguments = { 'q' },
      returns = { 'self' }
    },
    {
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = { 'self' }
    }
  },
  related = {
    'Quat:mul'
  }
}
