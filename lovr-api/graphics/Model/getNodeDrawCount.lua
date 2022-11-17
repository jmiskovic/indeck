return {
  summary = 'Get the number of meshes attached to a node.',
  description = [[
    Returns the number of meshes attached to a node.  Each mesh is drawn individually.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a node.'
    },
    name = {
      type = 'string',
      description = 'The name of a node.'
    }
  },
  returns = {
    count = {
      type = 'number',
      description = 'The number of draws in the node.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'count' }
    },
    {
      arguments = { 'name' },
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getMeshCount',
    'Model:getNodeDraw'
  }
}
