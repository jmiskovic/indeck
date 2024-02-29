return {
  tag = 'layers',
  summary = 'Create a new Layer.',
  description = [[
    Creates a new Layer.

    TODO
  ]],
  arguments = {
    width = {
      type = 'number',
      description = 'The width of the Layer texture, in pixels.'
    },
    height = {
      type = 'number',
      description = 'The height of the Layer texture, in pixels.'
    }
  },
  returns = {
    layer = {
      type = 'Layer',
      description = 'The new Layer.'
    }
  },
  variants = {
    {
      arguments = { 'width', 'height' },
      returns = { 'layer' }
    }
  },
  related = {
    'lovr.headset.getLayers',
    'lovr.headset.setLayers'
  }
}
