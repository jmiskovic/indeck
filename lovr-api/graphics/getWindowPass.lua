return {
  tag = 'graphics-objects',
  summary = 'Get the window pass.',
  description = [[
    Returns the window pass.  This is a builtin render `Pass` object that renders to the desktop
    window texture.  If the desktop window was not open when the graphics module was initialized,
    this function will return `nil`.
  ]],
  arguments = {},
  returns = {
    pass = {
      type = 'Pass',
      description = 'The window pass, or `nil` if there is no window.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'pass' }
    }
  },
  notes = [[
    `lovr.conf` may be used to change the settings for the pass:  `t.graphics.antialias` enables
    antialiasing, and `t.graphics.stencil` enables the stencil buffer.

    This pass clears the window texture to the background color, which can be changed using
    `lovr.graphics.setBackgroundColor`.
  ]]
}
