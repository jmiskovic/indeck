return {
  tag = 'system-window',
  summary = 'Check if the desktop window is open.',
  description = [[
    Returns whether the desktop window is open.  `t.window` can be set to `nil` in `lovr.conf` to
    disable automatic opening of the window.  In this case, the window can be opened manually using
    `lovr.system.openWindow`.
  ]],
  arguments = {},
  returns = {
    open = {
      type = 'boolean',
      description = 'Whether the desktop window is open.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'open' }
    }
  },
  related = {
    'lovr.system.openWindow'
  }
}
