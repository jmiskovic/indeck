return {
  summary = 'Get the pose of a node.',
  description = 'Returns the pose (position and orientation) of a node.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a node.'
    },
    name = {
      type = 'string',
      description = 'The name of a node.'
    },
    origin = {
      type = 'OriginType',
      default = [['root']],
      description = [[
        Whether the pose should be returned relative to the root node or the node's parent.
      ]]
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the node.'
    },
    y = {
      type = 'number',
      description = 'The y position of the node.'
    },
    z = {
      type = 'number',
      description = 'The z position of the node.'
    },
    angle = {
      type = 'number',
      description = 'The number of radians the node is rotated around its axis of rotation.'
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
    }
  },
  variants = {
    {
      arguments = { 'index', 'origin' },
      returns = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' }
    },
    {
      arguments = { 'name', 'origin' },
      returns = { 'x', 'y', 'z', 'angle', 'ax', 'ay', 'az' }
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
