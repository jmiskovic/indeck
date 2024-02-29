return {
  tag = 'transform',
  summary = 'Scale the coordinate system.',
  description = 'Scales the coordinate system.',
  arguments = {
    sx = {
      type = 'number',
      description = 'The x component of the scale.'
    },
    sy = {
      type = 'number',
      default = 'sx',
      description = 'The y component of the scale.'
    },
    sz = {
      type = 'number',
      default = 'sx',
      description = 'The z component of the scale.'
    },
    scale = {
      type = 'Vec3',
      description = 'The scale to apply.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Scale the coordinate system using numbers.',
      arguments = { 'sx', 'sy', 'sz' },
      returns = {}
    },
    {
      description = 'Scale the coordinate system using a vector.',
      arguments = { 'scale' },
      returns = {}
    }
  },
  related = {
    'Pass:translate',
    'Pass:rotate',
    'Pass:transform',
    'Pass:origin',
    'Pass:push',
    'Pass:pop'
  }
}
