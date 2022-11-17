return {
  tag = 'callbacks',
  summary = 'Called continuously to render frames to the display.',
  description = [[
    This callback is called every frame, and receives a `Pass` object as an argument which can be
    used to render graphics to the display.  If a VR headset is connected, this function renders to
    the headset display, otherwise it will render to the desktop window.
  ]],
  arguments = {
    {
      name = 'pass',
      type = 'Pass',
      description = 'A render pass targeting the main display (headset or window).'
    }
  },
  returns = {
    {
      name = 'skip',
      type = 'boolean',
      description = 'If truthy, the input Pass will not be submitted to the GPU.'
    }
  },
  notes = [[
    To render to the desktop window when a VR headset is connected, use the `lovr.mirror` callback.

    The display is cleared to the global background color before this callback is called, which can
    be changed using `lovr.graphics.setBackgroundColor`.

    Since the `lovr.graphics.submit` function always returns true, the following idiom can be used
    to submit graphics work manually and override the default submission:

        function lovr.draw(pass)
          local passes = {}

          -- ... record multiple passes and add to passes table

          return lovr.graphics.submit(passes)
        end
  ]],
  related = {
    'lovr.mirror',
    'lovr.headset.getPass',
    'lovr.graphics.getWindowPass',
    'lovr.graphics.setBackgroundColor'
  }
}
