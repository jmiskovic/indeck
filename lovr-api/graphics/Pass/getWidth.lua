return {
  tag = 'pass-misc',
  summary = 'Get the texture width of a render pass.',
  description = 'Returns the width of the textures attached to the render pass.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The texture width.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  notes = [[
    If the pass is not a render pass, this function returns zero.
  ]],
  related = {
    'Pass:getHeight',
    'Pass:getDimensions',
    'Pass:getViewCount',
    'lovr.graphics.getPass',
    'lovr.system.getWindowWidth',
    'lovr.headset.getDisplayWidth'
  }
}
