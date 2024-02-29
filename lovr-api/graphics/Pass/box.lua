return {
  tag = 'drawing',
  summary = 'Draw a box.',
  description = [[
    Draw a box.  This is like `Pass:cube`, except it takes 3 separate values for the scale.
  ]],
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the box.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the box.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the box.'
    },
    width = {
      type = 'number',
      default = '1',
      description = 'The width of the box.'
    },
    height = {
      type = 'number',
      default = '1',
      description = 'The height of the box.'
    },
    depth = {
      type = 'number',
      default = '1',
      description = 'The depth of the box.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the box around its rotation axis, in radians.'
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
      description = 'The position of the box.'
    },
    size = {
      type = 'Vec3',
      description = 'The size of the box.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the box.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the box.'
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the box should be drawn filled or outlined.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'width', 'height', 'depth', 'angle', 'ax', 'ay', 'az', 'style' },
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
  related = {
    'Pass:cube'
  }
}
