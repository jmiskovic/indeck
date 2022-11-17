return {
  summary = 'Get the advance of a glyph.',
  description = [[
    Returns the advance metric for a glyph, in pixels.  The advance is the horizontal distance to
    advance the cursor after rendering the glyph.
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
    advance = {
      type = 'number',
      description = 'The advance of the glyph, in pixels.'
    }
  },
  variants = {
    {
      arguments = { 'character' },
      returns = { 'advance' }
    },
    {
      arguments = { 'codepoint' },
      returns = { 'advance' }
    }
  }
}
