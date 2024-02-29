return {
  tag = 'drawing',
  summary = 'Draw a sphere.',
  description = 'Draws a sphere',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the sphere.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the sphere.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the sphere.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the sphere.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the sphere around its rotation axis, in radians.'
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
      description = 'The position of the sphere.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the sphere.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the sphere.'
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
      arguments = { 'x', 'y', 'z', 'radius', 'angle', 'ax', 'ay', 'az', 'longitudes', 'latitudes' },
      returns = {}
    },
    {
      arguments = { 'position', 'radius', 'orientation', 'longitudes', 'latitudes' },
      returns = {}
    },
    {
      arguments = { 'transform', 'longitudes', 'latitudes' },
      returns = {}
    }
  },
  notes = 'The local origin of the sphere is in its center.'
}
