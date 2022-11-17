return {
  tag = 'pass-misc',
  summary = 'Get the texture dimensions of a render pass.',
  description = 'Returns the dimensions of the textures attached to the render pass.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The texture width.'
    },
    height = {
      type = 'number',
      description = 'The texture height.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height' }
    }
  },
  notes = [[
    If the pass is not a render pass, this function returns zeros.
  ]],
  related = {
    'Pass:getWidth',
    'Pass:getHeight',
    'Pass:getViewCount',
    'lovr.graphics.getPass',
    'lovr.system.getWindowDimensions',
    'lovr.headset.getDisplayDimensions'
  }
}
