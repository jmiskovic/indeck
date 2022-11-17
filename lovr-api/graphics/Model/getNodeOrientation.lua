return {
  summary = 'Get the orientation of a node.',
  description = 'Returns the orientation of a node.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
    },
    origin = {
      type = 'OriginType',
      default = [['root']],
      description = [[
        Whether the orientation should be returned relative to the root node or the node's parent.
      ]]
    }
  },
  returns = {
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
      returns = { 'angle', 'ax', 'ay', 'az' }
    },
    {
      arguments = { 'name', 'origin' },
      returns = { 'angle', 'ax', 'ay', 'az' }
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
