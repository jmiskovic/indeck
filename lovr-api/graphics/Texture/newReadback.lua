return {
  tag = 'texture-transfer',
  summary = 'Read back the contents of the Texture asynchronously.',
  description = [[
    Creates and returns a new `Readback` that will download the pixels in the Texture from VRAM.
    Once the readback is complete, `Readback:getImage` returns an `Image` with a CPU copy of the
    data.
  ]],
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x offset of the region to download.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y offset of the region to download.'
    },
    layer = {
      type = 'number',
      default = '1',
      description = 'The index of the layer to download.'
    },
    mipmap = {
      type = 'number',
      default = '1',
      description = 'The index of the mipmap level to download.'
    },
    width = {
      type = 'number',
      default = 'nil',
      description = [[
        The width of the pixel rectangle to download.  If nil, the "rest" of the width will be used,
        based on the texture width and x offset.
      ]]
    },
    height = {
      type = 'number',
      default = 'nil',
      description = [[
        The height of the pixel rectangle to download.  If nil, the "rest" of the height will be
        used, based on the texture height and y offset.
      ]]
    }
  },
  returns = {
    readback = {
      type = 'Readback',
      description = 'A new Readback object.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'layer', 'mipmap', 'width', 'height' },
      returns = { 'readback' }
    }
  },
  notes = [[
    The texture must have been created with the `transfer` usage.

    Multisampled textures can not be read back.

    It is not currently possible to read back a texture view.
  ]],
  example = {
    description = [[
      Take a screenshot when pressing a key.  This uses an intermediate texture and render pass, to
      work around the fact that the window/headset textures don't support transfers.
    ]],
    code = [[
      local screenshot = false
      local readback
      local texture
      local pass

      function lovr.keypressed(key)
        if key == 'p' then screenshot = true end
      end

      function lovr.load()
        local width, height = lovr.headset.getDisplayDimensions()

        texture = lovr.graphics.newTexture(width, height, {
          usage = { 'render', 'transfer', 'sample' }
        })

        pass = lovr.graphics.newPass(texture)
      end

      function lovr.update()
        pass:reset()
        for i = 1, lovr.headset.getViewCount() do
          pass:setViewPose(i, lovr.headset.getViewPose(i))
          pass:setProjection(i, lovr.headset.getViewAngles(i))
        end
        pass:text('hellooo', 0, 1.7, -1, .1)
        lovr.graphics.submit(pass)

        if screenshot and not readback then
          readback = texture:newReadback()
          screenshot = false
        end

        if readback and readback:isComplete() then
          local filename = 'screenshot.png'
          lovr.filesystem.write(filename, readback:getImage():encode())
          print('saved screenshot to ' .. filename)
          readback = nil
        end
      end

      function lovr.draw(p)
        p:fill(texture)
      end
    ]]
  },
  related = {
    'Texture:getPixels',
    'Buffer:newReadback'
  }
}
