return {
  tag = 'pipeline',
  summary = 'Set the blend mode.',
  description = [[
    Sets the blend mode.  When a pixel is drawn, the blend mode controls how it is mixed with the
    color and alpha of the pixel underneath it.
  ]],
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the canvas texture that will use the new blend mode.'
    },
    blend = {
      type = 'BlendMode',
      description = 'The blend mode.'
    },
    alphaBlend = {
      type = 'BlendAlphaMode',
      description = 'The alpha blend mode, used to control premultiplied alpha.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Sets the blend mode for all canvas textures.',
      arguments = { 'blend', 'alphaBlend' },
      returns = {}
    },
    {
      description = [[
        Disables blending.  When something is drawn, its pixel colors will replace any existing
        color in the target texture.  This can work okay for opaque objects, but won't render text
        or transparency properly.
      ]],
      arguments = {},
      returns = {}
    },
    {
      description = 'Sets the blend mode for a single canvas texture.',
      arguments = { 'index', 'blend', 'alphaBlend' },
      returns = {}
    },
    {
      description = 'Disables blending for a single canvas texture.',
      arguments = { 'index' },
      returns = {}
    }
  },
  notes = 'The default blend mode is `alpha` with the `alphamultiply` alpha mode.'
}
