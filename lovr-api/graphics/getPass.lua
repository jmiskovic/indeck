return {
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
            },
            {
              name = 'clear',
              type = 'number',
              default = '0',
              description = [[
                How to clear the depth buffer at the beginning of the pass.  Can be a floating point
                number to clear each pixel to, `true` to do a "fast clear" that clears to random
                data, or `false` to not clear at all and instead load the depth texture's pixels.
              ]]
            }
          }
        },
        {
          name = 'clear',
          type = '*',
          description = [[
            How to clear the color textures at the beginning of the pass.  If this is a boolean or a
            color, that value will be used for all color textures.  It can also be a table of colors
            or booleans, one for each color texture.  Colors may be provided as `Vec3`, `Vec4`,
            hexcodes, or tables of numbers.  Note that tables of hexcode colors are ambiguous and
            therefore unsupported.  When using a boolean, `true` means to do a "fast clear" that
            clears the texture to random data, and `false` means to not clear at all and instead
            load the texture's existing pixels.
          ]]
        },
        {
          name = 'samples',
          type = 'number',
          default = '4',
          description = [[
            The number of multisamples to use.  Can be 4 for antialiasing, or 1 to disable
            antialiasing.
          ]]
        },
        {
          name = 'mipmap',
          type = 'boolean',
          default = [[false]],
          description = [[
            Whether mipmaps for the color and depth textures should be regenerated after the pass is
            finished.
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
      description = 'Create a compute or transfer pass.',
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

    - Textures must have the same dimensions, layer counts, and sample counts.
    - Textures must have been created with the `render` `TextureUsage`.
    - If `mipmap` is true, then any textures with mipmaps must have the `transfer` `TextureUsage`.
    - It's okay to have zero color textures, but in this case there must be a depth texture.
    - Setting `clear` to `false` for textures is usually very slow on mobile GPUs.

    For `compute` and `transfer` passes, all of the commands in the pass act as though they run in
    parallel.  This means that writing to the same element of a buffer twice, or writing to it and
    reading from it again is not guaranteed to work properly on all GPUs.  LÖVR is not currently
    able to check for this.  If compute or transfers need to be sequenced, multiple passes should be
    used.  It is, however, completely fine to read and write to non-overlapping regions of the same
    buffer or texture.
  ]],
  related = {
    'lovr.graphics.submit',
    'lovr.graphics.getWindowPass',
    'lovr.headset.getPass'
  }
}
