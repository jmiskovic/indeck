return {
  tag = 'work-submission',
  summary = 'Update the desktop window contents.',
  description = [[
    Presents the window texture to the desktop window.  This function is called automatically by the
    default implementation of `lovr.run`, so it normally does not need to be called.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    This should be called after submitting the window pass (`lovr.graphics.getWindowPass`).  If the
    window texture has not been rendered to since the last present, this function does nothing.
  ]],
  related = {
    'lovr.graphics.submit',
    'lovr.graphics.getWindowPass'
  }
}
