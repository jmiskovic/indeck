return {
  summary = 'Get a Mesh from the Model.',
  description = 'Returns a `Mesh` from the Model.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the Mesh to return.'
    }
  },
  returns = {
    mesh = {
      type = 'Mesh',
      description = 'The mesh object.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'mesh' }
    }
  },
  related = {
    'Model:getMeshCount',
    'lovr.graphics.newMesh'
  }
}
