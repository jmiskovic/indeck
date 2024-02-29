return {
  tag = 'transform',
  summary = 'Apply a general transform to the coordinate system.',
  description = 'Transforms the coordinate system.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x component of the translation.'
    },
    y = {
      type = 'number',
      description = 'The y component of the translation.'
    },
    z = {
      type = 'number',
      description = 'The z component of the translation.'
    },
    sx = {
      type = 'number',
      description = 'The x component of the scale.'
    },
    sy = {
      type = 'number',
      description = 'The y component of the scale.'
    },
    sz = {
      type = 'number',
      description = 'The z component of the scale.'
    },
    angle = {
      type = 'number',
      description = 'The amount to rotate the coordinate system by, in radians.'
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
    },
    translation = {
      type = 'Vec3',
      description = 'The translation to apply.'
    },
    scale = {
      type = 'Vec3',
      description = 'The scale to apply.'
    },
    rotation = {
      type = 'Quat',
      description = 'A quaternion containing the rotation to apply.'
    },
    transform = {
      type = 'Mat4',
      description = 'A matrix containing the transformation to apply.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Transform the coordinate system using numbers.',
      arguments = { 'x', 'y', 'z', 'sx', 'sy', 'sz', 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Transform the coordinate system using vector types.',
      arguments = { 'translation', 'scale', 'rotation' },
      returns = {}
    },
    {
      description = 'Transform the coordinate system using a matrix.',
      arguments = { 'transform' },
      returns = {}
    }
  },
  related = {
    'Pass:translate',
    'Pass:rotate',
    'Pass:scale',
    'Pass:origin',
    'Pass:push',
    'Pass:pop'
  }
}
