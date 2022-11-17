return {
  summary = 'Get the name of a node in the Model.',
  description = 'Returns the name of a node.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the node.'
    }
  },
  returns = {
    name = {
      type = 'string',
      description = 'The name of the node.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'name' }
    }
  },
  related = {
    'Model:getNodeCount',
    'Model:getAnimationName',
    'Model:getMaterialName'
  }
}
