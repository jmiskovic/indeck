return {
  summary = 'Get the value of a pixel of the Image.',
  description = 'Returns the value of a pixel of the Image.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the pixel to get (0-indexed).'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the pixel to get (0-indexed).'
    }
  },
  returns = {
    r = {
      type = 'number',
      description = 'The red component of the pixel, from 0.0 to 1.0.'
    },
    g = {
      type = 'number',
      description = 'The green component of the pixel, from 0.0 to 1.0.'
    },
    b = {
      type = 'number',
      description = 'The blue component of the pixel, from 0.0 to 1.0.'
    },
    a = {
      type = 'number',
      description = 'The alpha component of the pixel, from 0.0 to 1.0.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y' },
      returns = { 'r', 'g', 'b', 'a' }
    }
  },
  notes = [[
    The following texture formats are supported: `r8`, `rg8`, `rgba8`, `r16`, `rg16`, `rgba16`,
    `r32f`, `rg32f`, `rgba32f`.
  ]],
  related = {
    'Image:setPixel',
    'Image:mapPixel',
    'TextureFormat',
    'Texture:getPixels',
    'Texture:setPixels',
    'Texture:newReadback'
  }
}
