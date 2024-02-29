return {
  tag = 'headset',
  summary = 'Get the list of refresh rates supported by the display.',
  description = [[
    Returns a table with all the refresh rates supported by the headset display, in Hz.
  ]],
  arguments = {},
  returns = {
    rates = {
      type = 'table',
      description = [[
        A flat table of the refresh rates supported by the headset display, or nil if not supported.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'rates' }
    }
  },
  related = {
    'lovr.headset.getRefreshRate',
    'lovr.headset.setRefreshRate'
  }
}
