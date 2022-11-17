return {
  summary = 'Get the line spacing of the Font.',
  description = [[
    Returns the line spacing of the Font.  When spacing out lines, the height of the font is
    multiplied the line spacing to get the final spacing value.  The default is 1.0.
  ]],
  arguments = {},
  returns = {
    spacing = {
      type = 'number',
      description = 'The line spacing of the font.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'spacing' }
    }
  },
  related = {
    'Font:getHeight'
  }
}
