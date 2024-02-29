return {
  tag = 'drawing',
  summary = 'Draw a cylinder.',
  description = 'Draws a cylinder.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the cylinder.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the cylinder.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the cylinder.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the cylinder.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the cylinder.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the cylinder around its rotation axis, in radians.'
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
      description = 'The position of the center of the cylinder.'
    },
    scale = {
      type = 'Vec3',
      description = 'The size of the cylinder (x and y scale the radius, z is the length).'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the cylinder.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the cylinder.'
    },
    p1 = {
      type = 'Vec3',
      description = 'The starting point of the cylinder.'
    },
    p2 = {
      type = 'Vec3',
      description = 'The ending point of the cylinder.'
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
      arguments = { 'x', 'y', 'z', 'radius', 'length', 'angle', 'ax', 'ay', 'az', 'capped', 'angle1', 'angle2', 'segments' },
      returns = {}
    },
    {
      arguments = { 'position', 'scale', 'orientation', 'capped', 'angle1', 'angle2', 'segments' },
      returns = {}
    },
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
