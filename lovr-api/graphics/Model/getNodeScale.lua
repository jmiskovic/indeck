return {
  summary = 'Get the scale of a node.',
  description = 'Returns the scale of a node.',
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
        Whether the scale should be returned relative to the root node or the node's parent.
      ]]
    }
  },
  returns = {
    x = {
      type = 'number',
      description = 'The x scale.'
    },
    y = {
      type = 'number',
      description = 'The y scale.'
    },
    z = {
      type = 'number',
      description = 'The z scale.'
    }
  },
  variants = {
    {
      arguments = { 'index', 'origin' },
      returns = { 'x', 'y', 'z' }
    },
    {
      arguments = { 'name', 'origin' },
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Model:getNodePosition',
    'Model:setNodePosition',
    'Model:getNodeOrientation',
    'Model:setNodeOrientation',
    'Model:getNodePose',
    'Model:setNodePose',
    'Model:getNodeTransform',
    'Model:setNodeTransform',
    'Model:animate'
  }
}
