return {
  tag = 'transform',
  summary = 'Rotate the coordinate system.',
  description = 'Rotates the coordinate system.',
  arguments = {
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
    rotation = {
      type = 'Quat',
      description = 'A quaternion containing the rotation to apply.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Rotate the coordinate system using numbers.',
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    },
    {
      description = 'Rotate the coordinate system using a quaternion.',
      arguments = { 'rotation' },
      returns = {}
    }
  },
  related = {
    'Pass:translate',
    'Pass:scale',
    'Pass:transform',
    'Pass:origin',
    'Pass:push',
    'Pass:pop'
  }
}
