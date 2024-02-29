return {
  summary = 'Get the size of the layer.',
  description = [[
    Returns the width and height of the layer.  This is the size of the plane the layer is rendered
    onto, not the resolution of the layer's texture in pixels.
  ]],
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the layer, in meters.'
    },
    height = {
      type = 'number',
      description = 'The height of the layer, in meters.'
    }
  },
  variants = {
    arguments = {},
    returns = { 'width', 'height' }
  },
  notes = 'When a layer is created, its width and height are 1 meter.'
}
