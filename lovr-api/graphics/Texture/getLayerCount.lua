return {
  tag = 'texture-metadata',
  summary = 'Get the layer count of the Texture.',
  description = [[
    Returns the layer count of the Texture.  2D textures always have 1 layer and cubemaps always
    have 6 layers.  3D and array textures have a variable number of layers.
  ]],
  arguments = {},
  returns = {
    layers = {
      type = 'number',
      description = 'The layer count of the Texture.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'layers' }
    }
  },
  related = {
    'Texture:getWidth',
    'Texture:getHeight',
    'Texture:getDimensions'
  }
}
