return {
  tag = 'drawing',
  summary = 'Draw a plane.',
  description = 'Draws a plane.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the plane.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the plane.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the plane.'
    },
    width = {
      type = 'number',
      default = '1',
      description = 'The width of the plane.'
    },
    height = {
      type = 'number',
      default = '1',
      description = 'The height of the plane.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the plane around its rotation axis, in radians.'
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
      description = 'The position of the plane.'
    },
    size = {
      type = 'Vec2',
      description = 'The size of the plane.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the plane.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the plane.'
    },
    style = {
      type = 'DrawStyle',
      default = [['fill']],
      description = 'Whether the plane should be drawn filled or outlined.'
    },
    columns = {
      type = 'number',
      default = '1',
      description = 'The number of horizontal segments in the plane.'
    },
    rows = {
      type = 'number',
      default = 'columns',
      description = 'The number of vertical segments in the plane.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'width', 'height', 'angle', 'ax', 'ay', 'az', 'style', 'columns', 'rows' },
      returns = {}
    },
    {
      arguments = { 'position', 'size', 'orientation', 'style', 'columns', 'rows' },
      returns = {}
    },
    {
      arguments = { 'transform', 'style', 'columns', 'rows' },
      returns = {}
    }
  }
}
