return {
  summary = 'Return a lightweight copy of the Model with its own animation state.',
  description = [[
    Returns a lightweight copy of a Model.  Most of the data will be shared between the two copies
    of the model, like the materials, textures, and metadata.  However, the clone has its own set of
    node transforms, allowing it to be animated separately from its parent.  This allows a single
    model to be rendered in multiple different animation poses in a frame.
  ]],
  arguments = {},
  returns = {
    model = {
      type = 'Model',
      description = 'A genetically identical copy of the Model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'model' }
    }
  },
  notes = 'The node transforms of the clone will be reset to their initial setup poses.',
  related = {
    'lovr.graphics.newModel'
  }
}
