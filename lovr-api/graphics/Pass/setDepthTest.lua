return {
  tag = 'pipeline',
  summary = 'Configure the depth test.',
  description = 'Sets the depth test.',
  arguments = {
    test = {
      type = 'CompareMode',
      description = 'The new depth test to use.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'test' },
      returns = {}
    },
    {
      description = 'Disable the depth test.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    When using LÖVR's default projection (reverse Z with infinite far plane) the default depth test
    is `gequal`, depth values of 0.0 are on the far plane and depth values of 1.0 are on the near
    plane, closer to the camera.

    A depth buffer must be present to use the depth test, but this is enabled by default.
  ]],
  related = {
    'Pass:setDepthWrite',
    'Pass:setDepthOffset',
    'Pass:setDepthClamp',
    'Pass:setStencilTest'
  }
}
