return {
  tag = 'drawing',
  summary = 'Draw a circle.',
  description = 'Draws a circle.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the circle.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the circle.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the circle.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the circle.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the circle around its rotation axis, in radians.'
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
      description = 'The position of the circle.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the circle.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the circle.'
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the circle should be filled or outlined.'
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
      description = 'The number of segments to render.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'radius', 'angle', 'ax', 'ay', 'az', 'style', 'angle1', 'angle2', 'segments' },
      returns = {}
    },
    {
      arguments = { 'position', 'radius', 'orientation', 'style', 'angle1', 'angle2', 'segments' },
      returns = {}
    },
    {
      arguments = { 'transform', 'style', 'angle1', 'angle2', 'segments' },
      returns = {}
    }
  },
  notes = [[
    The local origin of the circle is in its center.  The local z axis is perpendicular to the
    circle.
  ]]
}
