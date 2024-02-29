return {
  summary = 'Get the Material applied to the Mesh.',
  description = 'Returns the `Material` applied to the Mesh.',
  arguments = {},
  returns = {
    material = {
      type = 'Material',
      description = 'The material.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'material' }
    }
  },
  related = {
    'Pass:setMaterial',
    'Model:getMaterial',
    'lovr.graphics.newMaterial'
  }
}
