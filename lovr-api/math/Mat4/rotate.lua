return {
  summary = 'Rotate the matrix.',
  description = 'Rotates the matrix using a quaternion or an angle/axis rotation.',
  arguments = {
    q = {
      type = 'Quat',
      description = 'The rotation to apply to the matrix.'
    },
    angle = {
      type = 'number',
      description = 'The angle component of the angle/axis rotation (radians).'
    },
    ax = {
      type = 'number',
      default = '0',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      default = '1',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      default = '0',
      description = 'The z component of the axis of rotation.'
    }
  },
  returns = {
    self = {
      type = 'Mat4',
      description = 'The rotated matrix.'
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
    'Mat4:translate',
    'Mat4:scale',
    'Mat4:identity'
  }
}
