return {
  tag = 'headset-misc',
  summary = 'Check if content is being shown in the headset display.',
  description = [[
    Returns whether LÖVR's content is being presented to the headset display.  Normally this will
    be true, but some VR runtimes allow applications to be hidden or "minimized", similar to desktop
    windows.
  ]],
  arguments = {},
  returns = {
    visible = {
      type = 'boolean',
      description = 'Whether the application is visible.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'visible' }
    }
  },
  notes = [[
    `lovr.draw` may still be called even when the application is invisible, and apps should continue
    to render the scene normally because the VR system may use this for timing info.  If the VR
    system decides that the application no longer needs to render, LÖVR will stop calling
    `lovr.draw`.
  ]],
  related = {
    'lovr.visible',
    'lovr.headset.isFocused',
    'lovr.focus'
  }
}
