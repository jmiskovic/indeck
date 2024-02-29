return {
  summary = 'Apply a transform to the vector.',
  description = [[
    Applies a transform (translation, rotation, scale) to the vector using a `Mat4` or numbers. This
    is the same as multiplying the vector by a matrix.
  ]],
  arguments = {
    m = {
      type = 'Mat4',
      description = 'The matrix to apply.'
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x component of the translation.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y component of the translation.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z component of the translation.'
    },
    scale = {
      type = 'number',
      default = '1',
      description = 'The scale factor.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The number of radians to rotate around the rotation axis.'
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
    },
    translation = {
      type = 'Vec3',
      description = 'The translation to apply.'
    },
    position = {
      type = 'Vec3',
      description = 'The scale to apply.'
    },
    rotation = {
      type = 'Quat',
      description = 'The rotation to apply.'
    },
  },
  returns = {
    self = {
      type = 'Vec4',
      description = 'The original vector, with transformed components.'
    }
  },
  variants = {
    {
      arguments = { 'm' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az' },
      returns = { 'self' }
    },
    {
      arguments = { 'translation', 'scale', 'rotation' },
      returns = { 'self' }
    }
  },
  related = {
    'Mat4:mul',
    'Vec3:transform'
  }
}
