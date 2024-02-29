return {
  tag = 'drawing',
  summary = 'Draw a Model, Mesh, or Texture.',
  description = 'Draws a `Model`, `Mesh`, or `Texture`.',
  arguments = {
    object = {
      type = '*',
      description = 'The Model, Mesh, or Texture to draw.'
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate to draw the object at.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate to draw the object at.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate to draw the object at.'
    },
    scale = {
      type = 'number',
      default = '1',
      description = 'The scale of the object.'
    },
    angle = {
      type = 'number',
      default = '0',
      description = 'The rotation of the object around its rotation axis, in radians.'
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
      description = 'The position to draw the object at.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation of the object.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform of the object.'
    },
    instances = {
      type = 'number',
      default = '1',
      description = 'The number of instances to draw.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'object', 'x', 'y', 'z', 'scale', 'angle', 'ax', 'ay', 'az', 'instances' },
      returns = {}
    },
    {
      arguments = { 'object', 'position', 'scale', 'orientation', 'instances' },
      returns = {}
    },
    {
      arguments = { 'object', 'transform', 'instances' },
      returns = {}
    }
  },
  notes = [[
    `Model:getMesh` can be used to draw individual meshes of a model.

    Textures ignore the `instances` parameter.

    When drawing a Texture, the plane will be 1 meter wide at 1.0 scale and the height will be
    adjusted based on the Texture's aspect ratio.
  ]]
}
