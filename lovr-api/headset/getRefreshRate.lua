return {
  tag = 'headset',
  summary = 'Get the refresh rate of the headset display.',
  description = 'Returns the refresh rate of the headset display, in Hz.',
  arguments = {},
  returns = {
    rate = {
      type = 'number',
      description = 'The refresh rate of the display, or `nil` if I have no idea what it is.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'rate' }
    }
  },
  related = {
    'lovr.headset.getRefreshRates'
  }
}
