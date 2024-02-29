return {
  tag = 'graphics-objects',
  summary = 'Create a new Pass.',
  description = [[
    Creates and returns a new Pass object.  The canvas (the set of textures the Pass renders to) can
    be specified when creating the Pass, or later using `Pass:setCanvas`.
  ]],
  arguments = {
    ['...textures'] = {
      type = 'Texture',
      description = [[
        One or more textures the pass will render to.  This can be changed later using
        `Pass:setCanvas`.
      ]]
    },
    canvas = {
      type = 'table',
      description = [[
        Render target configuration.  Up to 4 textures can be provided in table keys 1 through 4, as
        well as the following keys:
      ]],
      table = {
        {
          name = 'depth',
          type = 'table',
          description = [[
            Depth/stencil buffer settings.  In addition to a table, it can be a `Texture`, a
            `TextureFormat`, or `false` to disable the depth buffer.
          ]],
          table = {
            {
              name = 'format',
              type = 'TextureFormat',
              default = [['d32f']],
              description = [[
                The format of the depth buffer texture, which must be a depth format (the ones that
                start with `d`).  LÖVR will create or reuse an internal depth buffer with this
                format.
              ]]
            },
            {
              name = 'texture',
              type = 'Texture',
              description = 'A Texture to use as the depth buffer.  Takes precedence over `format`.'
            }
          }
        },
        {
          name = 'samples',
          type = 'number',
          default = '4',
          description = [[
            The number of multisamples to use.  Can be 4 for antialiasing, or 1 to disable
            antialiasing.
          ]]
        }
      }
    }
  },
  returns = {
    pass = {
      type = 'Pass',
      description = 'The new Pass.'
    }
  },
  variants = {
    {
      description = 'Create a pass that renders to a set of textures.',
      arguments = { '...textures' },
      returns = { 'pass' }
    },
    {
      description = 'Create a pass, with extra canvas settings.',
      arguments = { 'canvas' },
      returns = { 'pass' }
    },
    {
      description = 'Create an empty Pass without a canvas.',
      arguments = {},
      returns = { 'pass' }
    }
  },
  notes = [[
    Fun facts about render passes:

    - Textures must have been created with the `render` `TextureUsage`.
    - Textures must have the same dimensions, layer counts, and sample counts.
    - When rendering to textures with multiple layers, each draw will be broadcast to all layers.
      Render passes have multiple "views" (cameras), and each layer uses a corresponding view,
      allowing each layer to be rendered from a different viewpoint.  This enables fast stereo
      rendering, but can also be used to efficiently render to cubemaps.  The `ViewIndex` variable
      can also be used in shaders to set up any desired per-view behavior.
    - Mipmaps will automatically be generated for textures at the end of the render pass.
    - It's okay to have zero color textures, but in this case there must be a depth texture.
    - It's possible to render to a specific mipmap level of a Texture, or a subset of its layers, by
      rendering to texture views, see `Texture:newView`.
  ]],
  related = {
    'lovr.graphics.submit',
    'lovr.graphics.getWindowPass',
    'lovr.headset.getPass'
  }
}
