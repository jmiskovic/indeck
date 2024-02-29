return {
  summary = 'Transform an Image by applying a function to every pixel.',
  description = [[
    Transforms pixels in the Image using a function.

    The callback function passed to this function will be called once for each pixel.  For each
    pixel, the function will be called with its x and y coordinate and the red, green, blue, and
    alpha components of its color.  Whatever the function returns will be used as the new color for
    the pixel.

    The callback function will potentially be called thousands of times, so it's best to keep the
    amount of code in there small and fast.
  ]],
  arguments = {
    callback = {
      type = 'function',
      description = 'The function that will be called for each pixel.'
    },
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the upper-left corner of the area of the Image to affect.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the upper-left corner of the area of the Image to affect.'
    },
    w = {
      type = 'number',
      default = 'image:getWidth()',
      description = 'The width of the area to affect.'
    },
    h = {
      type = 'number',
      default = 'image:getHeight()',
      description = 'The height of the area to affect.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'callback', 'x', 'y', 'w', 'h' },
      returns = {}
    }
  },
  notes = [[
    The following texture formats are supported: `r8`, `rg8`, `rgba8`, `r16`, `rg16`, `rgba16`,
    `r32f`, `rg32f`, `rgba32f`.
  ]],
  examples = {
    {
      description = 'Convert an Image to grayscale.',
      code = [[
        image:mapPixel(function(x, y, r, g, b, a)
          local brightness = .21 * r + .72 * g + .07 * b
          return brightness, brightness, brightness, a
        end)
      ]]
    },
    {
      description = [[
        Efficient Image updates using FFI.  Due to the low-level nature, this will be a lot faster,
        but it's specialized to the `rgba8` image format and risks crashing if used improperly.
      ]],
      code = [[
        local ffi = require 'ffi'

        function lovr.load()
          local w, h = 256, 256

          image = lovr.data.newImage(w, h)

          local pointer = ffi.cast('uint8_t*', image:getPointer())

          for y = 0, h - 1 do
            for x = 0, w - 1 do
              pointer[(y * w + x) * 4 + 0] = (x / w) * 255
              pointer[(y * w + x) * 4 + 1] = (y / h) * 255
              pointer[(y * w + x) * 4 + 2] = 255
              pointer[(y * w + x) * 4 + 3] = 255
            end
          end

          texture = lovr.graphics.newTexture(image)
        end

        function lovr.draw(pass)
          pass:fill(texture)
        end
      ]]
    }
  },
  related = {
    'Image:setPixel',
    'Image:getPixel',
    'TextureFormat',
    'Texture:setPixels'
  }
}
