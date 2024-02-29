return {
  summary = 'Get the render pass for the layer.',
  description = 'Returns the render pass for the layer.  This can be used to render to the layer.',
  arguments = {},
  returns = {
    pass = {
      type = 'Pass',
      description = 'The layer\'s render pass.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'pass' }
    }
  },
  notes = [[
    This function will reset the Layer's render pass when it is called.

    The Pass will have its background color cleared to the background color, set using
    `lovr.graphics.setBackgroundColor`.

    The Pass will have its view matrix set to the identity matrix, and its projection will be set to
    an orthographic matrix where the top left of the texture is at the origin and the bottom right
    of the texture will be at `(width, height)` in pixels.
  ]],
  related = {
    'Layer:getTexture'
  }
}
