return {
  tag = 'headset',
  summary = 'Get the dimensions of the headset display.',
  description = 'Returns the texture dimensions of the headset display (for one eye), in pixels.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the display.'
    },
    height = {
      type = 'number',
      description = 'The height of the display.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height' }
    }
  },
  related = {
    'lovr.headset.getDisplayWidth',
    'lovr.headset.getDisplayHeight'
  }
}
