return {
  tag = 'drawing',
  summary = 'Draw a box.',
  description = [[
    Draw a box.  This is like `Pass:cube`, except it takes 3 separate values for the scale.
  ]],
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the box.  Can also be provided as position, 3-component scale, and rotation
        using a mix of `Vectors` or numbers.
      ]]
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the box should be drawn filled or outlined.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'style' },
      returns = {}
    }
  },
  related = {
    'Pass:cube'
  }
}
