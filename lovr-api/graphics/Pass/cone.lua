return {
  tag = 'drawing',
  summary = 'Draw a cone.',
  description = 'Draws a cone.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the base of the cone.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the base of the cone.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the base of the cone.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the cone.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the cone.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the cone around its rotation axis, in radians.'
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
      description = 'The position of the center of the base of the cone.'
    },
    scale = {
      type = 'Vec3',
      description = 'The size of the cone (x and y scale the radius, z is the length).'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the cone.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the cone.'
    },
    p1 = {
      type = 'Vec3',
      description = 'The position of the base of the cone.'
    },
    p2 = {
      type = 'Vec3',
      description = 'The position of the tip of the cone.'
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
      arguments = { 'x', 'y', 'z', 'radius', 'length', 'angle', 'ax', 'ay', 'az', 'segments' },
      returns = {}
    },
    {
      arguments = { 'position', 'scale', 'orientation', 'segments' },
      returns = {}
    },
    {
      arguments = { 'transform', 'segments' },
      returns = {}
    },
    {
      arguments = { 'p1', 'p2', 'radius', 'segments' },
      returns = {}
    }
  },
  notes = [[
    The local origin is at the center of the base of the cone, and the negative z axis points
    towards the tip.
  ]]
}
