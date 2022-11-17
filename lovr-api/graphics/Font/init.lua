return {
  summary = 'A Font used to render text.',
  description = [[
    Font objects are used to render text with `Pass:text`.  The active font can be changed using
    `Pass:setFont`.  The default font is Varela Round, which is used when no font is active, and can
    be retrieved using `lovr.graphics.getDefaultFont`.  Custom fonts can be loaded from TTF files
    using `lovr.graphics.newFont`.

    Each Font uses a `Rasterizer` to load the TTF file and create images for each glyph. As text is
    drawn, the Font uploads images from the Rasterizer to a GPU texture atlas as needed.  The Font
    also performs text layout and mesh generation for strings of text.

    LÖVR uses a text rendering technique called "multichannel signed distance fields" (MSDF), which
    makes the font rendering remain crisp when text is viewed up close.

  ]],
  constructors = {
    'lovr.graphics.newFont',
    'lovr.graphics.getDefaultFont'
  },
  notes = [[
    MSDF text requires a special shader to work.  LÖVR will automatically switch to this shader if
    no shader is active on the `Pass`.  This font shader is also available as a `DefaultShader`.
  ]]
}
