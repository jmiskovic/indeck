return {
  summary = 'Get the weight of a blend shape.',
  description = [[
    Returns the weight of a blend shape.  A blend shape contains offset values for the vertices of
    one of the meshes in a Model.  Whenever the Model is drawn, the offsets are multiplied by the
    weight of the blend shape, allowing for smooth blending between different meshes.  A weight of
    zero won't apply any displacement and will skip processing of the blend shape.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of a blend shape.'
    },
    name = {
      type = 'string',
      description = 'The name of a blend shape.'
    }
  },
  returns = {
    weight = {
      type = 'number',
      description = 'The weight of the blend shape.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'weight' }
    },
    {
      arguments = { 'name' },
      returns = { 'weight' }
    }
  },
  notes = [[
    The initial weights are declared in the model file.

    Weights can be any number, but usually they're kept between 0 and 1.

    This function will throw an error if the blend shape name or index doesn't exist.
  ]],
  related = {
    'Model:getBlendShapeCount',
    'Model:getBlendShapeName',
    'Model:resetBlendShapes'
  }
}
