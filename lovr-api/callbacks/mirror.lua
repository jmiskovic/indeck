return {
  tag = 'callbacks',
  summary = 'Called to render content to the desktop window.',
  description = [[
    This callback is called every frame after rendering to the headset and is usually used to render
    a mirror of the headset display onto the desktop window.  It can be overridden for custom
    mirroring behavior.  For example, a stereo view could be drawn instead of a single eye or a 2D
    HUD could be rendered.
  ]],
  arguments = {},
  returns = {},
  example = {
    description = [[
      The default `lovr.mirror` implementation draws the headset mirror texture to the window if
      the headset is active, or just calls `lovr.draw` if there isn't a headset.
    ]],
    code = [[
      function lovr.mirror(pass)
        if lovr.headset then
          local texture = lovr.headset.getTexture()
          if texture then
            pass:fill(texture)
          else
            return true
          end
        else
          return lovr.draw and lovr.draw(pass)
        end
      end
    ]]
  },
  related = {
    'lovr.system.openWindow',
    'lovr.draw'
  }
}
