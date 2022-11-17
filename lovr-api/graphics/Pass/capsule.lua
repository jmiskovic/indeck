return {
  tag = 'drawing',
  summary = 'Draw a capsule.',
  description = [[
    Draws a capsule.  A capsule is shaped like a cylinder with a hemisphere on each end.
  ]],
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the capsule.  Can also be provided as position, scale, and rotation using a
        mix of `Vectors` or numbers.  When using numbers for the scale, 2 should be provided: one
        for the radius and one for the length.  When using a matrix or a vector for the scale, the X
        and Y components are the radius and the Z component is the length.
      ]]
    },
    p1 = {
      type = 'Vec3',
      description = 'The starting point of the capsule.'
    },
    p2 = {
      type = 'Vec3',
      description = 'The ending point of the capsule.'
    },
    radius = {
      type = 'number',
      default = '1.0',
      description = 'The radius of the capsule.'
    },
    segments = {
      type = 'number',
      default = '32',
      description = 'The number of circular segments to render.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'segments' },
      returns = {}
    },
    {
      description = 'Draws a capsule between two points.',
      arguments = { 'p1', 'p2', 'radius', 'segments' },
      returns = {}
    }
  },
  notes = [[
    The length of the capsule does not include the end caps.  The local origin of the capsule is in
    the center, and the local z axis points towards the end caps.
  ]]
}
