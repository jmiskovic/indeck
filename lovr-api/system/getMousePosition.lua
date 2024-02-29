return {
  tag = 'system-mouse',
  summary = 'Get the position of the mouse.',
  description = 'Returns the position of the mouse.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the mouse, relative to the top-left of the window.'
    },
    y = {
      type = 'number',
      description = 'The y position of the mouse, relative to the top-left of the window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y' }
    }
  },
  related = {
    'lovr.system.getMouseX',
    'lovr.system.getMouseY',
    'lovr.mousemoved'
  }
}
