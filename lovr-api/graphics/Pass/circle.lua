return {
  tag = 'drawing',
  summary = 'Draw a circle.',
  description = 'Draws a circle.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the circle.  Can also be provided as position, radius, and rotation, using
        a mix of `Vectors` or numbers.
      ]]
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the circle should be filled or outlined.'
    },
    angle1 = {
      type = 'number',
      default = '0',
      description = 'The angle of the beginning of the arc.'
    },
    angle2 = {
      type = 'number',
      default = '2 * math.pi',
      description = 'angle of the end of the arc.'
    },
    segments = {
      type = 'number',
      default = '64',
      description = 'The number of segments to render.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'style', 'angle1', 'angle2', 'segments' },
      returns = {}
    }
  },
  notes = [[
    The local origin of the circle is in its center, and the local z axis goes through the center.
  ]]
}
