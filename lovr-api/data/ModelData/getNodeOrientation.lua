return {
  summary = 'Get the local orientation of a node.',
  description = 'Returns local orientation of a node, relative to its parent.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    },
    name = {
      type = 'string',
      description = 'The name of the node.'
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
      arguments = { 'index' },
      returns = { 'angle', 'ax', 'ay', 'az' }
    },
    {
      arguments = { 'name' },
      returns = { 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'ModelData:getNodePosition',
    'ModelData:getNodeScale',
    'ModelData:getNodePose',
    'ModelData:getNodeTransform'
  }
}
