return {
  deprecated = true,
  tag = 'graphics-objects',
  summary = 'Get a temporary Pass.',
  description = 'Creates and returns a temporary Pass object.',
  arguments = {
    type = {
      type = 'PassType',
      description = 'The type of pass to create.'
    },
    texture = {
      type = 'Texture',
      description = 'The texture the render pass will render to.  Ignored for non-render passes.'
    },
    canvas = {
      type = 'table',
      description = [[
        Render pass configuration.  Up to 4 textures can be provided in table keys 1 through 4.
        Ignored for non-render passes.
      ]],
      table = {
        {
          name = 'depth',
          type = 'table',
          description = [[
            Depth/stencil buffer configuration.  In addition to a table, it can be a `Texture`, a
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
      description = 'Create a compute pass.',
      arguments = { 'type' },
      returns = { 'pass' }
    },
    {
      description = 'Create a render pass.',
      arguments = { 'type', 'texture' },
      returns = { 'pass' }
    },
    {
      description = 'Create a render pass, with options.',
      arguments = { 'type', 'canvas' },
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

    For `compute` passes, all of the commands in the pass act as though they run in parallel.  This
    means that writing to the same element of a buffer twice, or writing to it and reading from it
    again is not guaranteed to work properly on all GPUs.  If compute or transfers need to be
    sequenced, multiple passes should be used.  It is, however, completely fine to read and write to
    non-overlapping regions of the same buffer or texture.
  ]],
  related = {
    'lovr.graphics.submit',
    'lovr.graphics.getWindowPass',
    'lovr.headset.getPass'
  }
}
