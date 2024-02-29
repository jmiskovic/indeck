return {
  tag = 'canvas',
  summary = 'Get the width of the Pass\'s canvas.',
  description = 'Returns the width of the textures of the Pass\'s canvas, in pixels.',
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
  notes = 'If the pass doesn\'t have a canvas, this function returns zero.',
  related = {
    'Pass:getHeight',
    'Pass:getDimensions',
    'Pass:getViewCount',
    'Pass:getCanvas',
    'Pass:setCanvas',
    'lovr.system.getWindowWidth',
    'lovr.headset.getDisplayWidth'
  }
}
