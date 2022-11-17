return {
  summary = 'Set the value of a pixel of the Image.',
  description = 'Sets the value of a pixel of the Image.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the pixel to set (0-indexed).'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the pixel to set (0-indexed).'
    },
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
      default = '1.0',
      description = 'The alpha component of the pixel, from 0.0 to 1.0.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'r', 'g', 'b', 'a' },
      returns = {}
    }
  },
  notes = [[
    The following texture formats are supported: `rgba`, `rgb`, `r32f`, `rg32f`, and `rgba32f`.
  ]],
  related = {
    'Image:getPixel',
    'TextureFormat',
    'Pass:copy'
  }
}
