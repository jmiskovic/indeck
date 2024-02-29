return {
  tag = 'drawing',
  summary = 'Draw a capsule.',
  description = [[
    Draws a capsule.  A capsule is shaped like a cylinder with a hemisphere on each end.
  ]],
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the capsule.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the capsule.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the capsule.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the capsule.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the capsule.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the capsule around its rotation axis, in radians.'
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
      description = 'The position of the center of the capsule.'
    },
    scale = {
      type = 'Vec3',
      description = 'The size of the capsule (x and y scale the radius, z is the length).'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the capsule.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the capsule.'
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
