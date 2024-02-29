return {
  tag = 'callbacks',
  summary = 'Called when a mouse button is pressed.',
  description = 'This callback is called when a mouse button is pressed.',
  arguments = {
    {
      name = 'x',
      type = 'number',
      description = 'The x position of the mouse when the button was pressed.'
    },
    {
      name = 'y',
      type = 'number',
      description = 'The y position of the mouse when the button was pressed.'
    },
    {
      name = 'button',
      type = 'number',
      description = [[
        The button that was pressed.  Will be 1 for the primary button, 2 for the secondary button,
        or 3 for the middle mouse button.
      ]]
    }
  },
  returns = {},
  related = {
    'lovr.mousereleased',
    'lovr.mousemoved',
    'lovr.wheelmoved',
    'lovr.system.isMouseDown'
  }
}
