return {
  tag = 'drawing',
  summary = 'Draw a cube.',
  description = 'Draws a cube.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the cube.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the cube.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the cube.'
    },
    size = {
      type = 'number',
      default = '1',
      description = 'The size of the cube.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the cube around its rotation axis, in radians.'
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
      description = 'The position of the cube.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the cube.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the cube.'
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the cube should be drawn filled or outlined.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'size', 'angle', 'ax', 'ay', 'az', 'style' },
      returns = {}
    },
    {
      arguments = { 'position', 'size', 'orientation', 'style' },
      returns = {}
    },
    {
      arguments = { 'transform', 'style' },
      returns = {}
    }
  },
  notes = 'The local origin is in the center of the cube.'
}
