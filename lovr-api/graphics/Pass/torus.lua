return {
  tag = 'drawing',
  summary = 'Draw a donut.',
  description = 'Draws a torus.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the torus.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the torus.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the torus.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the torus.'
    },
    thickness = {
      type = 'number',
      default = '1',
      description = 'The thickness of the torus.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the torus around its rotation axis, in radians.'
    },
    ax = {
      type = 'number',
      default = '0',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      default = '1',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      default = '0',
      description = 'The z component of the axis of rotation.'
    },
    position = {
      type = 'Vec3',
      description = 'The position of the center of the torus.'
    },
    scale = {
      type = 'Vec3',
      description = 'The size of the torus (x and y scale the radius, z is the thickness).'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the torus.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the torus.'
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
      arguments = { 'x', 'y', 'z', 'radius', 'thickness', 'angle', 'ax', 'ay', 'az', 'tsegments', 'psegments' },
      returns = {}
    },
    {
      arguments = { 'position', 'scale', 'orientation', 'tsegments', 'psegments' },
      returns = {}
    },
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
