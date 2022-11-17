return {
  summary = 'Open the desktop window.',
  description = [[
    Opens the desktop window.  If the window is already open, this function does nothing.
  ]],
  arguments = {
    options = {
      type = 'table',
      description = 'Window options.',
      table = {
        {
          name = 'width',
          type = 'number',
          default = '720',
          description = 'The width of the window, or 0 to use the width of the monitor.'
        },
        {
          name = 'height',
          type = 'number',
          default = '800',
          description = 'The height of the window, or 0 to use the height of the monitor.'
        },
        {
          name = 'fullscreen',
          type = 'boolean',
          description = 'Whether the window should be fullscreen.'
        },
        {
          name = 'resizable',
          type = 'boolean',
          description = 'Whether the window should be resizable.'
        },
        {
          name = 'title',
          type = 'string',
          description = 'The window title.'
        },
        {
          name = 'icon',
          type = 'string',
          description = 'An `Image` or path to an image file to use for the window icon.'
        }
      }
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'options' },
      returns = {}
    }
  },
  notes = [[
    By default, the window is opened automatically, but this can be disabled by setting `t.window`
    to `nil` in `conf.lua`.
  ]],
  related = {
    'lovr.system.isWindowOpen',
    'lovr.conf'
  }
}
