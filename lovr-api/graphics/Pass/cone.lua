return {
  tag = 'drawing',
  summary = 'Draw a cone.',
  description = 'Draws a cone.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the cone.  Can also be provided as position, scale, and rotation using a
        mix of `Vectors` or numbers.  When using numbers for the scale, 2 should be provided: one
        for the radius and one for the length.  When using a matrix or a vector for the scale, the X
        and Y components are the radius and the Z component is the length.
      ]]
    },
    segments = {
      type = 'number',
      default = '64',
      description = 'The number of segments in the cone.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'segments' },
      returns = {}
    }
  },
  notes = [[
    The local origin is at the center of the base of the cone, and the negative z axis points
    towards the tip.
  ]]
}
