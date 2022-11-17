return {
  summary = 'Get the kerning between two glyphs.',
  description = [[
    Returns the kerning between 2 glyphs, in pixels.  Kerning is a slight horizontal adjustment
    between 2 glyphs to improve the visual appearance.  It will often be negative.
  ]],
  arguments = {
    first = {
      type = 'string',
      description = 'The first character.'
    },
    firstCodepoint = {
      type = 'number',
      description = 'The first codepoint.'
    },
    second = {
      type = 'string',
      description = 'The second character.'
    },
    secondCodepoint = {
      name = 'secondCodepoint',
      type = 'number',
      description = 'The second codepoint.'
    }
  },
  returns = {
    keming = {
      type = 'number',
      description = 'The kerning between the two glyphs.'
    }
  },
  variants = {
    {
      arguments = { 'first', 'second' },
      returns = { 'keming' }
    },
    {
      arguments = { 'firstCodepoint', 'second' },
      returns = { 'keming' }
    },
    {
      arguments = { 'first', 'secondCodepoint' },
      returns = { 'keming' }
    },
    {
      arguments = { 'firstCodepoint', 'secondCodepoint' },
      returns = { 'keming' }
    }
  },
  related = {
    'Font:getKerning'
  }
}
