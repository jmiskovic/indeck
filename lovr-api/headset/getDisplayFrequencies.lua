return {
  deprecated = true,
  tag = 'headset',
  summary = 'Get the list of refresh rates supported by the display.',
  description = [[
    Returns a table with all the refresh rates supported by the headset display, in Hz.
  ]],
  arguments = {},
  returns = {
    frequencies = {
      type = 'table',
      description = [[
        A flat table of the refresh rates supported by the headset display, nil if not supported.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'frequencies' }
    }
  },
  related = {
    'lovr.headset.setDisplayFrequency'
  }
}
