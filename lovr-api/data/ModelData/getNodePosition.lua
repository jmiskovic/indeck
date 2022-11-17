return {
  summary = 'Get the local position of a node.',
  description = 'Returns local position of a node, relative to its parent.',
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
    x = {
      type = 'number',
      description = 'The x coordinate.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'x', 'y', 'z' }
    },
    {
      arguments = { 'name' },
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'ModelData:getNodeOrientation',
    'ModelData:getNodeScale',
    'ModelData:getNodePose',
    'ModelData:getNodeTransform'
  }
}
