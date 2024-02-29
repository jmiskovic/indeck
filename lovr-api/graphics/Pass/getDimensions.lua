return {
  tag = 'canvas',
  summary = 'Get the dimensions of the Pass\'s canvas.',
  description = 'Returns the dimensions of the textures of the Pass\'s canvas, in pixels.',
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
  notes = 'If the pass doesn\'t have a canvas, this function returns zeros.',
  related = {
    'Pass:getWidth',
    'Pass:getHeight',
    'Pass:getViewCount',
    'Pass:getCanvas',
    'Pass:setCanvas',
    'lovr.system.getWindowDimensions',
    'lovr.headset.getDisplayDimensions'
  }
}
