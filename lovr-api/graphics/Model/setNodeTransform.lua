return {
  summary = 'Set or blend the transform of a node.',
  description = [[
    Sets or blends the transform of a node to a new transform.  This sets the local transform of the
    node, relative to its parent.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
    },
    x = {
      type = 'number',
      description = 'The x component of the position.'
    },
    y = {
      type = 'number',
      description = 'The y component of the position.'
    },
    z = {
      type = 'number',
      description = 'The z component of the position.'
    },
    sx = {
      type = 'number',
      description = 'The x component of the scale.'
    },
    sy = {
      type = 'number',
      description = 'The y component of the scale.'
    },
    sz = {
      type = 'number',
      description = 'The z component of the scale.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the node should be rotated around its rotation axis.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the axis of rotation.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the axis of rotation.'
    },
    az = {
      type = 'number',
      description = 'The z component of the axis of rotation.'
    },
    position = {
      type = 'Vec3',
      description = 'The position.'
    },
    scale = {
      type = 'Vec3',
      description = 'The scale.'
    },
    orientation = {
      type = 'Quat',
      description = 'The orientation.'
    },
    transform = {
      type = 'Mat4',
      description = 'The transform.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the target transform to blend in.  A value of 0
        will not change the node's transform at all, whereas 1 will fully blend to the target
        transform.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'x', 'y', 'z', 'sx', 'sy', 'sz', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'x', 'y', 'z', 'sx', 'sy', 'sz', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'position', 'scale', 'orientation', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'position', 'scale', 'orientation', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'transform', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'transform', 'blend' },
      returns = {}
    }
  },
  notes = [[
    For best results when animating, it's recommended to keep the 3 components of the scale the
    same.

    Even though the translation, scale, and rotation parameters are given in TSR order, they are
    applied in the normal TRS order.
  ]],
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:animate'
  }
}
