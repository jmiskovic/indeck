return {
  summary = 'Get the parent of a node.',
  description = 'Given a child node, this function returns the index of its parent.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the child node.'
    },
    name = {
      type = 'string',
      description = 'The name of the child node.'
    }
  },
  returns = {
    parent = {
      type = 'number',
      description = 'The index of the parent.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'parent' }
    },
    {
      arguments = { 'name' },
      returns = { 'parent' }
    }
  },
  related = {
    'ModelData:getNodeChildren',
    'ModelData:getRootNode',
    'Model:getNodeParent'
  }
}
