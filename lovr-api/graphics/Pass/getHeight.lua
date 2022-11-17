return {
  tag = 'pass-misc',
  summary = 'Get the texture height of a render pass.',
  description = 'Returns the height of the textures attached to the render pass.',
  arguments = {},
  returns = {
    height = {
      type = 'number',
      description = 'The texture height.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'height' }
    }
  },
  notes = [[
    If the pass is not a render pass, this function returns zero.
  ]],
  related = {
    'Pass:getWidth',
    'Pass:getDimensions',
    'Pass:getViewCount',
    'lovr.graphics.getPass',
    'lovr.system.getWindowHeight',
    'lovr.headset.getDisplayHeight'
  }
}
