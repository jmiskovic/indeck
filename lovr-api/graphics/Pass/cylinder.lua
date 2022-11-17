return {
  tag = 'drawing',
  summary = 'Draw a cylinder.',
  description = 'Draws a cylinder.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the cylinder.  Can also be provided as position, scale, and rotation using
        a mix of `Vectors` or numbers.  When using numbers for the scale, 2 should be provided: one
        for the radius and one for the length.  When using a matrix or a vector for the scale, the X
        and Y components are the radius and the Z component is the length.
      ]]
    },
    p1 = {
      type = 'Vec3',
      description = 'The starting point of the cylinder.'
    },
    p2 = {
      type = 'Vec3',
      description = 'The ending point of the cylinder.'
    },
    radius = {
      type = 'number',
      description = 'The radius of the cylinder.'
    },
    capped = {
      type = 'boolean',
      default = 'true',
      description = 'Whether the tops and bottoms of the cylinder should be rendered.'
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
      description = 'The number of circular segments to render.'
    }
  },
  variants = {
    {
      arguments = { 'transform', 'capped', 'angle1', 'angle2', 'segments' },
      returns = {}
    },
    {
      arguments = { 'p1', 'p2', 'radius', 'capped', 'angle1', 'angle2', 'segments' },
      returns = {}
    }
  },
  returns = {},
  notes = [[
    The local origin is in the center of the cylinder, and the length of the cylinder is along the z
    axis.
  ]]
}
