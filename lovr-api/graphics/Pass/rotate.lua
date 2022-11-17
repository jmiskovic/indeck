return {
  tag = 'transform',
  summary = 'Rotate the coordinate system.',
  description = 'Rotates the coordinate system.',
  arguments = {
    rotation = {
      type = 'Quat',
      description = [[
        A quaternion containing the rotation to apply.  Can also be provided as 4 numbers in
        angle-axis representation.
      ]]
    }
  },
  returns = {},
  variants = {
    {
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
