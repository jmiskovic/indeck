return {
  tag = 'headset',
  summary = 'Get the current passthrough mode.',
  description = 'Returns the current passthrough mode.',
  arguments = {},
  returns = {
    mode = {
      type = 'PassthroughMode',
      description = 'The current passthrough mode.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'mode' }
    }
  },
  related = {
    'lovr.headset.getPassthroughModes'
  }
}
