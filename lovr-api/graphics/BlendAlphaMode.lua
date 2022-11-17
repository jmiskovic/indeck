return {
  summary = 'Whether premultiplied alpha is enabled.',
  description = 'Controls whether premultiplied alpha is enabled.',
  values = {
    {
      name = 'alphamultiply',
      description = 'Color channel values are multiplied by the alpha channel during blending.'
    },
    {
      name = 'premultiplied',
      description = [[
        Color channel values are not multiplied by the alpha.  Instead, it's assumed that the colors
        have already been multiplied by the alpha.  This should be used if the pixels being drawn
        have already been blended, or "pre-multiplied".
      ]]
    }
  },
  notes = [[
    The premultiplied mode should be used if pixels being drawn have already been blended, or
    "pre-multiplied", by the alpha channel.  This happens when rendering to a texture that contains
    pixels with transparent alpha values, since the stored color values have already been faded by
    alpha and don't need to be faded a second time with the alphamultiply blend mode.
  ]],
  related = {
    'BlendMode',
    'Pass:setBlendMode'
  }
}
