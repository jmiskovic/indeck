return {
  tag = 'drawing',
  summary = 'Draw a skybox.',
  description = 'Draws a skybox.',
  arguments = {
    skybox = {
      type = 'Texture',
      description = [[
        The skybox to render.  Its `TextureType` can be `cube` to render as a cubemap, or `2d` to
        render as an equirectangular (spherical) 2D image.
      ]]
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'skybox' },
      returns = {}
    },
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    The skybox will be rotated based on the camera rotation.

    The skybox is drawn using a fullscreen triangle.

    The skybox uses a custom shader, so set the shader to `nil` before calling this function (unless
    explicitly using a custom shader).
  ]]
}
