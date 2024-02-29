return {
  tag = 'system-window',
  summary = 'Get the width of the window.',
  description = 'Returns the width of the desktop window.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the desktop window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  notes = 'If the window is not open, this will return zero.',
  related = {
    'lovr.system.getWindowHeight',
    'lovr.system.getWindowDimensions',
    'lovr.system.isWindowOpen'
  }
}
