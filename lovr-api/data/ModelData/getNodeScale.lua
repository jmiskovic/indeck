return {
  summary = 'Get the local scale of a node.',
  description = 'Returns local scale of a node, relative to its parent.',
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
    sx = {
      type = 'number',
      description = 'The x scale.'
    },
    sy = {
      type = 'number',
      description = 'The y scale.'
    },
    sz = {
      type = 'number',
      description = 'The z scale.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'sx', 'sy', 'sz' }
    },
    {
      arguments = { 'name' },
      returns = { 'sx', 'sy', 'sz' }
    }
  },
  related = {
    'ModelData:getNodePosition',
    'ModelData:getNodeOrientation',
    'ModelData:getNodePose',
    'ModelData:getNodeTransform'
  }
}
