return {
  tag = 'drawing',
  summary = 'Draw a donut.',
  description = 'Draws a torus.',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the torus.  Can also be provided as position, scale, and rotation using a
        mix of `Vectors` or numbers.  When using numbers for the scale, 2 should be provided: one
        for the radius and one for the thickness.  When using a matrix or a vector for the scale,
        the X and Y components are the radius and the Z component is the thickness.
      ]]
    },
    tsegments = {
      type = 'number',
      default = '64',
      description = 'The number of toroidal (circular) segments to render.'
    },
    psegments = {
      type = 'number',
      default = '32',
      description = 'The number of poloidal (tubular) segments to render.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'tsegments', 'psegments' },
      returns = {}
    }
  },
  notes = [[
    The local origin is in the center of the torus, and the torus forms a circle around the local Z
    axis.
  ]]
}
