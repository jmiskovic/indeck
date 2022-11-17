return {
  tag = 'transform',
  summary = 'Translate the coordinate system.',
  description = 'Translates the coordinate system.',
  arguments = {
    translation = {
      type = 'Vec3',
      description = [[
        The translation to apply to the coordinate system.  Can also be provided as 3 numbers.
      ]]
    }
  },
  returns = {},
  variants = {
    {
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
