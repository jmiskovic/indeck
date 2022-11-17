return {
  summary = 'Set the line spacing of the Font.',
  description = [[
    Sets the line spacing of the Font.  When spacing out lines, the height of the font is multiplied
    by the line spacing to get the final spacing value.  The default is 1.0.
  ]],
  arguments = {
    spacing = {
      type = 'number',
      description = 'The new line spacing.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'spacing' },
      returns = {}
    }
  },
  related = {
    'Font:getHeight'
  }
}
