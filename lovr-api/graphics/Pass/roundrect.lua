return {
  tag = 'drawing',
  summary = 'Draw a rounded rectangle.',
  description = 'Draws a rounded rectangle.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the rectangle.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the rectangle.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the rectangle.'
    },
    width = {
      type = 'number',
      default = '1',
      description = 'The width of the rectangle.'
    },
    height = {
      type = 'number',
      default = '1',
      description = 'The height of the rectangle.'
    },
    thickness = {
      type = 'number',
      default = '1',
      description = 'The thickness of the rectangle.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the rectangle around its rotation axis, in radians.'
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
      description = 'The position of the rectangle.'
    },
    size = {
      type = 'Vec3',
      description = 'The size of the rectangle (width, height, thickness).'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the rectangle.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the rectangle.'
    },
    radius = {
      type = 'number',
      default = '0',
      description = [[
        The radius of the rectangle corners.  If the radius is zero or negative, the rectangle will
        have sharp corners.
      ]]
    },
    segments = {
      type = 'number',
      default = '8',
      description = [[
        The number of circular segments to use for each corner.  This increases the smoothness, but
        increases the number of vertices in the mesh.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'width', 'height', 'thickness', 'angle', 'ax', 'ay', 'az', 'radius', 'segments' },
      returns = {}
    },
    {
      arguments = { 'position', 'size', 'orientation', 'radius', 'segments' },
      returns = {}
    },
    {
      arguments = { 'transform', 'radius', 'segments' },
      returns = {}
    }
  }
}
