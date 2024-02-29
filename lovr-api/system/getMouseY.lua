return {
  tag = 'system-mouse',
  summary = 'Get the y position of the mouse.',
  description = 'Returns the y position of the mouse.',
  arguments = {},
  returns = {
    y = {
      type = 'number',
      description = 'The y position of the mouse, relative to the top-left of the window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'y' }
    }
  },
  related = {
    'lovr.system.getMouseX',
    'lovr.system.getMousePosition',
    'lovr.mousemoved'
  }
}
