return {
  tag = 'pipeline',
  summary = 'Set the blend mode.',
  description = [[
    Sets the blend mode.  When a pixel is drawn, the blend mode controls how it is mixed with the
    color and alpha of the pixel underneath it.
  ]],
  arguments = {
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
      arguments = { 'blend', 'alphaBlend' },
      returns = {}
    }
  },
  notes = 'The default blend mode is `alpha` with the `alphamultiply` alpha mode.'
}
