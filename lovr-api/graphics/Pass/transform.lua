return {
  tag = 'transform',
  summary = 'Apply a general transform to the coordinate system.',
  description = 'Transforms the coordinate system.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        A matrix containing the transformation to apply to the coordinate system.  Can also be
        provided as a position, 3-component scale, and rotation, using a mix of `Vectors` or
        numbers.
      ]]
    }
  },
  returns = {},
  variants = {
    {
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
