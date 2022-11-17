return {
  tag = 'headset',
  summary = 'Get the width of the headset display.',
  description = 'Returns the width of the headset display (for one eye), in pixels.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the display.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'lovr.headset.getDisplayHeight',
    'lovr.headset.getDisplayDimensions'
  }
}
