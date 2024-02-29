return {
  tag = 'layers',
  summary = 'Set the list of active layers.',
  description = [[
    Sets the list of active `Layer` objects.  These are the layers that will be rendered in the
    headset's display.  They are rendered in order.
  ]],
  arguments = {
    ['...layers'] = {
      type = 'Layer',
      description = 'Zero or more layers to render in the headset.'
    },
    t = {
      type = 'table',
      description = 'A table with zero or more layers starting at index 1.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { '...layers' },
      returns = {}
    },
    {
      arguments = { 't' },
      returns = {}
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
