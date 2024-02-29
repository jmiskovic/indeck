return {
  tag = 'graphics-misc',
  summary = 'Get the supported GPU features.',
  description = 'Returns a table indicating which features are supported by the GPU.',
  arguments = {},
  returns = {
    features = {
      type = 'table',
      description = '',
      table = {
        {
          name = 'textureBC',
          type = 'boolean',
          description = [[
            Whether `TextureFormat`s starting with `bc` are supported. This will almost always be
            `true` on desktop GPUs and will almost always be `false` on mobile GPUs.
          ]]
        },
        {
          name = 'textureASTC',
          type = 'boolean',
          description = [[
            Whether `TextureFormat`s beginning with `astc` are supported.  This will almost always
            be `true` on mobile GPUs and will almost always be `false` on desktop GPUs.
          ]]
        },
        {
          name = 'wireframe',
          type = 'boolean',
          description = [[
            When supported, `Pass:setWireframe` will work, otherwise it will do nothing. This will
            always be `true` when using Vulkan, and will always be `false` when using WebGPU.
          ]]
        },
        {
          name = 'depthClamp',
          type = 'boolean',
          description = [[
            When supported, `Pass:setDepthClamp` will work, otherwise it will do nothing.
          ]]
        },
        {
          name = 'depthResolve',
          type = 'boolean',
          description = [[
            When supported, multisampled render passes can use a non-multisampled depth texture.
            Otherwise, the depth texture sample count needs to match the render pass sample count.
          ]]
        },
        {
          name = 'indirectDrawFirstInstance',
          type = 'boolean',
          description = [[
            Whether indirect draws can set the firstInstance property of buffer memory to something
            other than zero.
          ]]
        },
        {
          name = 'float64',
          type = 'boolean',
          description = 'Whether shader code can use doubles.'
        },
        {
          name = 'int64',
          type = 'boolean',
          description = 'Whether shader code can use signed and unsigned 64-bit integers.'
        },
        {
          name = 'int16',
          type = 'boolean',
          description = 'Whether shader code can use signed and unsigned 16-bit integers.'
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'features' }
    }
  },
  related = {
    'lovr.graphics.isFormatSupported',
    'lovr.graphics.getDevice',
    'lovr.graphics.getLimits'
  }
}
