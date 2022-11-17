return {
  summary = 'Get the bearing of a glyph.',
  description = [[
    Returns the bearing metric for a glyph, in pixels.  The bearing is the horizontal distance from
    the cursor to the edge of the glyph.
  ]],
  arguments = {
    character = {
      type = 'string',
      description = 'A character.'
    },
    codepoint = {
      type = 'number',
      description = 'A codepoint.'
    }
  },
  returns = {
    bearing = {
      type = 'number',
      description = 'The bearing of the glyph, in pixels.'
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'bearing' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'bearing' }
    }
  }
}
