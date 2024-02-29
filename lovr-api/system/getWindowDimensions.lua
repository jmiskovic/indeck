return {
  tag = 'system-window',
  summary = 'Get the dimensions of the window.',
  description = 'Returns the dimensions of the desktop window.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the desktop window.'
    },
    height = {
      type = 'number',
      description = 'The height of the desktop window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'height' }
    }
  },
  notes = 'If the window is not open, this will return zeros.',
  related = {
    'lovr.system.getWindowWidth',
    'lovr.system.getWindowHeight',
    'lovr.system.isWindowOpen'
  }
}
