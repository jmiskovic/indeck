return {
  tag = 'drawing',
  summary = 'Draw a fullscreen triangle.',
  description = [[
    Draws a fullscreen triangle.  The `fill` shader is used, which stretches the triangle across the
    screen.
  ]],
  arguments = {
    texture = {
      type = 'Texture',
      description = 'The texture to fill.  If nil, the texture from the active material is used.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'texture' },
      returns = {}
    },
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    This function has some special behavior for array textures:

    - Filling a single-layer texture to a multi-layer canvas will mirror the texture to all layers,
      just like regular drawing.
    - Filling a 2-layer texture to a mono canvas will render the 2 layers side-by-side.
    - Filling a multi-layer texture to a multi-layer canvas will do a layer-by-layer fill (the layer
      counts must match).
  ]]
}
