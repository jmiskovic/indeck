return {
  summary = 'Set the components of the matrix.',
  description = [[
    Sets the components of the matrix from separate position, rotation, and scale arguments or an
    existing matrix.
  ]],
  arguments = {
    d = {
      type = 'number',
      description = 'A number to use for the diagonal elements.'
    },
    n = {
      type = 'Mat4',
      description = 'An existing matrix to copy the values from.'
    },
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
      description = 'The angle of the rotation, in radians.'
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
    position = {
      type = 'Vec3',
      description = 'The translation of the matrix.'
    },
    scale = {
      type = 'Vec3',
      description = 'The scale of the matrix.'
    },
    rotation = {
      type = 'Quat',
      description = 'The rotation of the matrix.'
    },
    ['...'] = {
      type = 'number',
      description = 'The raw values of the matrix, in column-major order.'
    }
  },
  returns = {
    m = {
      type = 'Mat4',
      description = 'The input matrix.'
    }
  },
  variants = {
    {
      description = [[
        Resets the matrix to the identity matrix, without any translation, rotation, or scale.
      ]],
      arguments = {},
      returns = { 'm' }
    },
    {
      description = 'Copies the values from an existing matrix.',
      arguments = { 'n' },
      returns = { 'm' }
    },
    {
      description = 'Sets the position, scale, and rotation of the matrix using numbers.',
      arguments = { 'x', 'y', 'z', 'sx', 'sy', 'sz', 'angle', 'ax', 'ay', 'az' },
      returns = { 'm' }
    },
    {
      description = [[
        Sets the pose (position and orientation) of the matrix using numbers.  The scale is set to 1
        on all axes.
      ]],
      arguments = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' },
      returns = { 'm' }
    },
    {
      arguments = { 'position', 'scale', 'rotation' },
      returns = { 'm' }
    },
    {
      arguments = { 'position', 'rotation' },
      returns = { 'm' }
    },
    {
      description = 'Sets the raw components of the matrix using 16 numbers in column-major order.',
      arguments = { '...' },
      returns = { 'm' }
    },
    {
      description = 'Sets the diagonal values to a number and everything else to 0.',
      arguments = { 'd' },
      returns = { 'm' }
    }
  },
  related = {
    'Mat4:unpack'
  }
}
