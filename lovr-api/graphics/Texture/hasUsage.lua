return {
  summary = 'Check if a Texture was created with a set of usage flags.',
  description = [[
    Returns whether a Texture was created with a set of `TextureUsage` flags.  Usage flags are
    specified when the Texture is created, and restrict what you can do with a Texture object.  By
    default, only the `sample` usage is enabled.  Applying a smaller set of usage flags helps LÖVR
    optimize things better.
  ]],
  arguments = {
    ['...'] = {
      type = 'TextureUsage',
      description = 'One or more usage flags.'
    }
  },
  returns = {
    supported = {
      type = 'boolean',
      description = 'Whether the Texture has all the provided usage flags.'
    }
  },
  variants = {
    {
      arguments = { '...' },
      returns = { 'supported' }
    }
  },
  related = {
    'lovr.graphics.newTexture'
  }
}
