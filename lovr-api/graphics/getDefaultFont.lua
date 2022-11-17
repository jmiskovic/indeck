return {
  tag = 'graphics-objects',
  summary = 'Get the default Font.',
  description = [[
    Returns the default Font.  The default font is Varela Round, created at 32px with a spread value
    of `4.0`.  It's used by `Pass:text` if no Font is provided.
  ]],
  arguments = {},
  returns = {
    font = {
      type = 'Font',
      description = 'The default Font object.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'font' }
    }
  },
  related = {
    'Pass:text',
    'lovr.graphics.newFont'
  }
}
