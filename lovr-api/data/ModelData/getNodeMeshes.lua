return {
  summary = 'Get the indices of meshes attached to a node.',
  description = [[
    Returns a table of mesh indices attached to a node.  Meshes define the geometry and materials of
    a model, as opposed to the nodes which define the transforms and hierarchy.  A node can have
    multiple meshes, and meshes can be reused in multiple nodes.
  ]],
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
    meshes = {
      type = 'table',
      description = 'A table with the node\'s mesh indices.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'meshes' }
    },
    {
      arguments = { 'name' },
      returns = { 'meshes' }
    }
  },
  related = {
    'ModelData:getMeshCount'
  }
}
