return {
  summary = 'Different shader stages.',
  description = [[
    Different shader stages.  Graphics shaders have a `vertex` and `fragment` stage, and compute
    shaders have a single `compute` stage.
  ]],
  values = {
    {
      name = 'vertex',
      description = 'The vertex stage, which computes transformed vertex positions.'
    },
    {
      name = 'fragment',
      description = 'The fragment stage, which computes pixel colors.'
    },
    {
      name = 'compute',
      description = 'The compute stage, which performs arbitrary computation.'
    }
  }
}
