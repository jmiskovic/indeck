return {
  description = [[
    These are the different things `Texture`s can be used for.  When creating a Texture, a set of
    these flags can be provided, restricting what operations are allowed on the texture.  Using a
    smaller set of flags may improve performance.  If none are provided, the only usage flag applied
    is `sample`.
  ]],
  values = {
    {
      name = 'sample',
      description = [[
        Whether the texture can be sampled from in Shaders (i.e. used in a material, or bound to a
        variable with a `texture` type, like `texture2D`).
      ]]
    },
    {
      name = 'render',
      description = [[
        Whether the texture can be rendered to (i.e. by using it as a render target in
        `lovr.graphics.pass`).
      ]]
    },
    {
      name = 'storage',
      description = [[
        Whether the texture can be used as a storage texture for compute operations (i.e. bound to
        a variable with an `image` type, like `image2D`).
      ]]
    },
    {
      name = 'transfer',
      description = 'Whether the texture can be used in a transfer pass.'
    }
  }
}
