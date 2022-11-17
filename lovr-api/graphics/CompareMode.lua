return {
  summary = 'Different ways of performing comparisons.',
  description = [[
    The method used to compare depth and stencil values when performing the depth and stencil tests.
    Also used for compare modes in `Sampler`s.
  ]],
  values = {
    {
      name = 'none',
      description = 'The test does not take place, and acts as though it always passes.'
    },
    {
      name = 'equal',
      description = 'The test passes if the values are equal.'
    },
    {
      name = 'notequal',
      description = 'The test passes if the values are not equal.'
    },
    {
      name = 'less',
      description = 'The test passes if the value is less than the existing one.'
    },
    {
      name = 'lequal',
      description = 'The test passes if the value is less than or equal to the existing one.'
    },
    {
      name = 'greater',
      description = 'The test passes if the value is greater than the existing one.'
    },
    {
      name = 'gequal',
      description = 'The test passes if the value is greater than or equal to the existing one.'
    },
  },
  notes = [[
    This type can also be specified using mathematical notation, e.g. `=`, `>`, `<=`, etc.
    `notequal` can be provided as `~=` or `!=`.
  ]],
  related = {
    'Pass:setDepthTest',
    'Pass:setStencilTest',
    'Pass:setDepthWrite',
    'Pass:setStencilWrite'
  }
}
