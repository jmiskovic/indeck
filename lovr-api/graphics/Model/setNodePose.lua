return {
  summary = 'Set or blend the pose of a node.',
  description = [[
    Sets or blends the pose (position and orientation) of a node to a new pose.  This sets the local
    pose of the node, relative to its parent.  The scale will remain unchanged.
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
      description = 'The target position.  Can also be provided as 3 numbers.'
    },
    orientation = {
      type = 'Quat',
      description = 'The target orientation.  Can also be provided as 4 numbers in angle-axis form.'
    },
    blend = {
      type = 'number',
      default = '1.0',
      description = [[
        A number from 0 to 1 indicating how much of the target pose to blend in.  A value of 0 will
        not change the node's pose at all, whereas 1 will fully blend to the target pose.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'index', 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az', 'blend' },
      returns = {}
    },
    {
      arguments = { 'index', 'position', 'orientation', 'blend' },
      returns = {}
    },
    {
      arguments = { 'name', 'position', 'orientation', 'blend' },
      returns = {}
    }
  },
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodeScale',
    'Model:setNodeScale',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
