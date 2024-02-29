return {
  tag = 'system-mouse',
  summary = 'Get the x position of the mouse.',
  description = 'Returns the x position of the mouse.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the mouse, relative to the top-left of the window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x' }
    }
  },
  related = {
    'lovr.system.getMouseY',
    'lovr.system.getMousePosition',
    'lovr.mousemoved'
  }
}
