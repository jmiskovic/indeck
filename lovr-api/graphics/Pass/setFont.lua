return {
  tag = 'pipeline',
  summary = 'Set the font.',
  description = 'Sets the font used for `Pass:text`.',
  arguments = {
    font = {
      type = 'Font',
      description = 'The Font to use when rendering text.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'font' },
      returns = {}
    }
  },
  related = {
    'Pass:text',
    'lovr.graphics.newFont',
    'lovr.graphics.getDefaultFont'
  }
}
