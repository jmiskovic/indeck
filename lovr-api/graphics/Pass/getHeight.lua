return {
  tag = 'canvas',
  summary = 'Get the height of the Pass\'s canvas.',
  description = 'Returns the height of the textures of the Pass\'s canvas, in pixels.',
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
  notes = 'If the pass doesn\'t have a canvas, this function returns zero.',
  related = {
    'Pass:getWidth',
    'Pass:getDimensions',
    'Pass:getViewCount',
    'Pass:getCanvas',
    'Pass:setCanvas',
    'lovr.system.getWindowHeight',
    'lovr.headset.getDisplayHeight'
  }
}
