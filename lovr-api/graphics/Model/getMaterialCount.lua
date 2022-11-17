return {
  summary = 'Get the number of materials in the Model.',
  description = 'Returns the number of materials in the Model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of materials in the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'Model:getMaterialName',
    'Model:getMaterial'
  }
}
