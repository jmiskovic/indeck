return {
  tag = 'headset',
  summary = 'Set the display refresh rate.',
  description = 'Sets the display refresh rate, in Hz.',
  arguments = {
    rate = {
      type = 'number',
      description = 'The new refresh rate, in Hz.',
    }
  },
  returns = {
    success = {
      type = 'boolean',
      description = 'Whether the display refresh rate was successfully set.'
    }
  },
  variants = {
    {
      arguments = { 'rate' },
      returns = { 'success' }
    }
  },
  notes = [[
    Changing the display refresh-rate usually also changes the frequency of lovr.update() and
    lovr.draw() as they depend on the refresh rate.  However, it's ultimately up to the VR
    runtime to decide how often the application gets to render, based on available resources.
  ]],
  related = {
    'lovr.headset.getRefreshRates'
  }
}
