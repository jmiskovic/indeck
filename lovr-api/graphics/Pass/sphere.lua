return {
  tag = 'drawing',
  summary = 'Draw a sphere.',
  description = 'Draws a sphere',
  arguments = {
    transform = {
      type = 'Mat4',
      description = [[
        The transform of the sphere.  Can also be provided as a position, radius, and rotation using
        a mix of `Vectors and numbers.'
      ]]
    },
    longitudes = {
      type = 'number',
      default = '48',
      description = 'The number of "horizontal" segments.'
    },
    latitudes = {
      type = 'number',
      default = 'longitudes / 2',
      description = 'The number of "vertical" segments.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'transform', 'longitudes', 'latitudes' },
      returns = {}
    }
  },
  notes = 'The local origin of the sphere is in its center.'
}
