return {
  tag = 'system-mouse',
  summary = 'Check if a mouse button is pressed.',
  description = 'Returns whether a mouse button is currently pressed.',
  arguments = {
    button = {
      type = 'number',
      description = [[
        The index of a button to check.  Use 1 for the primary mouse button, 2 for the secondary
        button, and 3 for the middle button.  Other indices can be used, but are hardware-specific.
      ]]
    }
  },
  returns = {
    down = {
      type = 'boolean',
      description = 'Whether the mouse button is currently down.'
    }
  },
  variants = {
    {
      arguments = { 'button' },
      returns = { 'down' }
    }
  },
  related = {
    'lovr.mousepressed',
    'lovr.mousereleased',
    'lovr.system.getMouseX',
    'lovr.system.getMouseY',
    'lovr.system.getMousePosition'
  }
}
