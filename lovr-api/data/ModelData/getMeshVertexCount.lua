return {
  summary = 'Get the number of vertices in a mesh.',
  description = 'Returns the number of vertices in a mesh.',
  arguments = {
    mesh = {
      type = 'number',
      description = 'The index of a mesh.'
    }
  },
  returns = {
    count = {
      type = 'number',
      description = 'The number of vertices in the mesh.'
    }
  },
  variants = {
    {
      arguments = { 'mesh' },
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getMeshIndexCount'
  }
}
