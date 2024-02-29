return {
  tag = 'callbacks',
  summary = 'Called when the mouse is moved.',
  description = 'This callback is called when the mouse is moved.',
  arguments = {
    {
      name = 'x',
      type = 'number',
      description = 'The new x position of the mouse.'
    },
    {
      name = 'y',
      type = 'number',
      description = 'The new y position of the mouse.'
    },
    {
      name = 'dx',
      type = 'number',
      description = 'The movement on the x axis since the last mousemove event.'
    },
    {
      name = 'dy',
      type = 'number',
      description = 'The movement on the y axis since the last mousemove event.'
    }
  },
  returns = {},
  related = {
    'lovr.mousepressed',
    'lovr.mousereleased',
    'lovr.wheelmoved',
    'lovr.system.getMouseX',
    'lovr.system.getMouseY',
    'lovr.system.getMousePosition'
  }
}
