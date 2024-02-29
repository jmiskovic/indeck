return {
  summary = 'Set a Material to use when drawing the Mesh.',
  description = 'Sets a `Material` to use when drawing the Mesh.',
  arguments = {
    material = {
      type = 'Material',
      description = 'The material to use.'
    },
    texture = {
      type = 'Texture',
      description = 'The texture to use as the material.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'material' },
      returns = {}
    },
    {
      arguments = { 'texture' },
      returns = {}
    }
  },
  related = {
    'Pass:setMaterial',
    'Model:getMaterial',
    'lovr.graphics.newMaterial'
  }
}
