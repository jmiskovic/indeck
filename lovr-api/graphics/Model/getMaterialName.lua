return {
  summary = 'Get the name of a material in the Model.',
  description = 'Returns the name of a material in the Model.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a material.'
    }
  },
  returns = {
    name = {
      type = 'string',
      description = 'The name of the material.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'name' }
    }
  },
  related = {
    'Model:getMaterialCount',
    'Model:getMaterial'
  }
}
