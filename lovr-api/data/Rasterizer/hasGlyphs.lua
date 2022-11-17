return {
  summary = 'Get whether the Rasterizer can rasterize a set of glyphs.',
  description = 'Returns whether the Rasterizer can rasterize a set of glyphs.',
  arguments = {
    ['...'] = {
      type = '*',
      description = 'Strings (sets of characters) or numbers (character codes) to check for.'
    }
  },
  returns = {
    hasGlyphs = {
      type = 'boolean',
      description = [[
        true if the Rasterizer can rasterize all of the supplied characters, false otherwise.
      ]]
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'hasGlyphs' }
    }
  },
  related = {
    'Rasterizer:getGlyphCount'
  }
}
