return {
  summary = 'Different ways Textures can be used.',
  description = [[
    These are the different ways `Texture` objects can be used.  These are passed in to
    `lovr.graphics.isFormatSupported` to see which texture operations are supported by the GPU for a
    given format.
  ]],
  values = {
    {
      name = 'sample',
      description = [[
        The Texture can be sampled (e.g. a `texture2D` or `sampler2D` variable in shaders).
      ]]
    },
    {
      name = 'filter',
      description = 'The Texture can be used with a `Sampler` using a `FilterMode` of `linear`.'
    },
    {
      name = 'render',
      description = 'The Texture can be rendered to by using it as a target in a render `Pass`.'
    },
    {
      name = 'blend',
      description = 'Blending can be enabled when rendering to this format in a render pass.'
    },
    {
      name = 'storage',
      description = 'The Texture can be sent to an image variable in shaders (e.g. `image2D`).'
    },
    {
      name = 'atomic',
      description = 'Atomic operations can be used on storage textures with this format.'
    },
    {
      name = 'blitsrc',
      description = 'Source textures in `Pass:blit` can use this format.'
    },
    {
      name = 'blitdst',
      description = 'Destination textures in `Pass:blit` can use this format.'
    }
  }
}
