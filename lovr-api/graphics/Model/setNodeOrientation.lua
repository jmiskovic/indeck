return {
  summary = 'Set or blend the orientation of a node.',
  description = [[
    Sets or blends the orientation of a node to a new orientation.  This sets the local orientation
    of the node, relative to its parent.
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
    orientation = {
      type = 'Quat',
      description = 'The orientation.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the target orientation to blend in.  A value of
        0 will not change the node's orientation at all, whereas 1 will fully blend to the target
        orientation.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'orientation', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'orientation', 'blend' },
      returns = {}
    }
  },
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
