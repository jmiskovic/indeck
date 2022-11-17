return {
  summary = 'Wrap a string into a sequence of lines.',
  description = [[
    Returns a table of wrapped lines for a piece of text, given a line length limit.  Newlines are
    handled correctly.  The wrap limit units depend on the pixel density of the font.  With the
    default pixel density, the units correspond to meters when the font is drawn at 1.0 scale.
  ]],
  arguments = {
    string = {
      type = 'string',
      description = 'The text to wrap.'
    },
    strings = {
      type = 'table',
      description = [[
        A table of colored strings, each given as a `{ color, string }` pair.  The color can be a
        `Vec3`, `Vec4`, table, or hexcode.
      ]]
    },
    wrap = {
      type = 'number',
      description = 'The line length to wrap at.'
    }
  },
  returns = {
    lines = {
      type = 'table',
      description = 'A table strings, one for each wrapped line (without any color information).'
    }
  },
  variants = {
    {
      arguments = { 'string', 'wrap' },
      returns = { 'lines' }
    },
    {
      arguments = { 'strings', 'wrap' },
      returns = { 'lines' }
    }
  },
  related = {
    'Font:getWidth',
    'Font:getHeight',
    'Pass:text'
  }
}
