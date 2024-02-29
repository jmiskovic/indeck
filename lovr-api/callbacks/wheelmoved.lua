return {
  tag = 'callbacks',
  summary = 'Called when a mouse wheel is moved.',
  description = 'This callback is called on scroll action, from a mouse wheel or a touchpad',
  arguments = {
    {
      name = 'deltaX',
      type = 'number',
      description = 'The relative horizontal motion; rightward movement resuts in positive values.'
    },
    {
      name = 'deltaY',
      type = 'number',
      description = 'The relative vertical motion; upward movement results in positive values.'
    }
  },
  returns = {},
  related = {
    'lovr.mousepressed',
    'lovr.mousereleased',
    'lovr.mousemoved',
    'lovr.system.isMouseDown'
  }
}
