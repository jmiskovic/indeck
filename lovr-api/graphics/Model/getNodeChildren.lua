return {
  summary = 'Get the children of a node.',
  description = [[
    Given a parent node, this function returns a table with the indices of its children.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the parent node.'
    },
    name = {
      type = 'string',
      description = 'The name of the parent node.'
    }
  },
  returns = {
    children = {
      type = 'table',
      description = 'A table containing a node index for each child of the node.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'children' }
    },
    {
      arguments = { 'name' },
      returns = { 'children' }
    }
  },
  notes = 'If the node does not have any children, this function returns an empty table.',
  related = {
    'Model:getNodeParent',
    'Model:getRootNode'
  }
}
