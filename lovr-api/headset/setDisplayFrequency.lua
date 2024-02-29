return {
  deprecated = true,
  tag = 'headset',
  summary = 'Set the display refresh rate.',
  description = 'Sets the display refresh rate, in Hz.',
  arguments = {
    frequency = {
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
      arguments = { 'frequency' },
      returns = { 'success' }
    }
  },
  notes = [[
    Changing the display refresh-rate also changes the frequency of lovr.update() and lovr.draw() as
    they depend on the display frequency.
  ]]
}
