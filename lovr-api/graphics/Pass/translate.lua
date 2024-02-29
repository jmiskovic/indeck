return {
  tag = 'transform',
  summary = 'Translate the coordinate system.',
  description = 'Translates the coordinate system.',
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
    translation = {
      type = 'Vec3',
      description = 'The translation.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Translate the coordinate system using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Translate the coordinate system using a vector.',
      arguments = { 'translation' },
      returns = {}
    }
  },
  notes = 'Order matters when scaling, translating, and rotating the coordinate system.',
  related = {
    'Pass:rotate',
    'Pass:scale',
    'Pass:transform',
    'Pass:origin',
    'Pass:push',
    'Pass:pop'
  }
}
