return {
  tag = 'transform',
  summary = 'Scale the coordinate system.',
  description = 'Scales the coordinate system.',
  arguments = {
    scale = {
      type = 'Vec3',
      description = [[
        The scale to apply to the coordinate system.  Can also be provided as 1 or 3 numbers.
      ]]
    }
  },
  returns = {},
  variants = {
    {
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
