return {
  tag = 'layers',
  summary = 'Get the list of active layers.',
  description = [[
    Returns the list of active `Layer` objects.  These are the layers that will be rendered in the
    headset's display.  They are rendered in order.
  ]],
  arguments = {},
  returns = {
    layers = {
      type = 'table',
      description = 'The list of layers.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'layers' }
    }
  },
  notes = [[
    Currently some VR systems are able to sort the layers by their Z depth, but on others layers
    later in the list will render on top of previous layers, regardless of depth.

    There is currently a maximum of 10 layers.
  ]],
  related = {
    'lovr.headset.newLayer',
    'Layer'
  }
}
