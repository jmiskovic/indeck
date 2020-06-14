return {
  tag = 'callbacks',
  summary = 'Called continuously to render frames to the display.',
  description = [[
    This callback is called every frame.  Use it to render the scene.  If a VR headset is connected,
    anything rendered by this function will appear in the headset display.
  ]],
  arguments = {},
  returns = {},
  related = {
    'lovr.headset.renderTo'
  }
}
