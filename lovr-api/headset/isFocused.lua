return {
  summary = 'Check if LÖVR has VR input focus.',
  description = [[
    Returns whether LÖVR has VR input focus.  Focus is lost when the VR system menu is shown.  The
    `lovr.focus` callback can be used to detect when this changes.
  ]],
  arguments = {},
  returns = {
    focused = {
      type = 'boolean',
      description = 'Whether the application is focused.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'focused' }
    }
  },
  related = {
    'lovr.focus'
  }
}
