return {
  summary = 'Get the height of the window.',
  description = 'Returns the height of the desktop window.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The height of the desktop window.'
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
    'lovr.system.getWindowWidth',
    'lovr.system.getWindowDimensions',
    'lovr.system.isWindowOpen'
  }
}
