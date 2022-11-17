return {
  tag = 'graphics-objects',
  summary = 'Create a new Sampler.',
  description = [[
    Creates a new Sampler.  Samplers are immutable, meaning their parameters can not be changed
    after the sampler is created.  Instead, a new sampler should be created with the updated
    properties.
  ]],
  arguments = {
    parameters = {
      type = 'table',
      description = 'Parameters for the sampler.',
      table = {
        {
          name = 'filter',
          type = 'table',
          default = [['linear']],
          description = [[
            How the sampler smooths texture pixels.  Can be a table of 3 FilterModes, or a single
            FilterMode to use for all three.
          ]],
          table = {
            {
              name = '[1]',
              type = 'FilterMode',
              description = [[
                The filter mode to use when minifying a texture (drawing it at a smaller size than
                its native pixel resolution).
              ]]
            },
            {
              name = '[2]',
              type = 'FilterMode',
              description = [[
                The filter mode to use when magnifying a texture (drawing it at a larger size than
                its native pixel resolution).
              ]]
            },
            {
              name = '[3]',
              type = 'FilterMode',
              description = 'The filter mode used to smooth between mipmap levels in a texture.'
            }
          }
        },
        {
          name = 'wrap',
          type = 'table',
          default = [['repeat']],
          description = [[
            How the sampler behaves when wrapping UVs outside the 0-1 range.  Can be a table of 3
            WrapModes, or a single WrapMode to use for all three axes.
          ]],
          table = {
            {
              name = '[1]',
              type = 'WrapMode',
              description = 'The horizontal wrap mode.'
            },
            {
              name = '[2]',
              type = 'WrapMode',
              description = 'The vertical wrap mode.'
            },
            {
              name = '[3]',
              type = 'FilterMode',
              description = 'The "z" wrap mode for 3D textures.'
            }
          }
        },
        {
          name = 'compare',
          type = 'CompareMode',
          default = [['none']],
          description = 'The compare mode of the sampler (for shadow samplers).'
        },
        {
          name = 'anisotropy',
          type = 'number',
          default = '1',
          description = 'The maximum amount of anisotropic filtering to use.'
        },
        {
          name = 'mipmaprange',
          type = 'table',
          description = 'A table of 2 mipmap levels the sampler will clamp to.'
        }
      }
    }
  },
  returns = {
    sampler = {
      type = 'Sampler',
      description = 'The new sampler.'
    }
  },
  variants = {
    {
      arguments = { 'parameters' },
      returns = { 'sampler' }
    }
  },
  related = {
    'Pass:setSampler'
  }
}
