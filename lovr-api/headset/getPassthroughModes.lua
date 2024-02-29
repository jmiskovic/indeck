return {
  tag = 'headset',
  summary = 'Get the supported passthrough modes.',
  description = 'Returns the set of supported passthrough modes.',
  arguments = {},
  returns = {
    modes = {
      type = 'table',
      description = [[
        The set of supported passthrough modes.  Keys will be `PassthroughMode` strings, and values
        will be booleans indicating whether the mode is supported.
      ]]
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'modes' }
    }
  },
  related = {
    'lovr.headset.getPassthrough',
    'lovr.headset.setPassthrough'
  }
}
