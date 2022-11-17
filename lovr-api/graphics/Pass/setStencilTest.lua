return {
  tag = 'pipeline',
  summary = 'Configure the stencil test.',
  description = [[
    Sets the stencil test.  Any pixels that fail the stencil test won't be drawn.  For example,
    setting the stencil test to `('equal', 1)` will only draw pixels that have a stencil value of 1.
    The stencil buffer can be modified by drawing while stencil writes are enabled with
    `lovr.graphics.setStencilWrite`.
  ]],
  arguments = {
    test = {
      type = 'CompareMode',
      description = 'The new stencil test to use.'
    },
    value = {
      type = 'number',
      description = 'The stencil value to compare against.'
    },
    mask = {
      type = 'number',
      default = '0xff',
      description = 'An optional mask to apply to stencil values before the comparison.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'test', 'value', 'mask' },
      returns = {}
    },
    {
      description = 'Disable the stencil test.',
      arguments = {},
      returns = {}
    }
  },
  notes = 'The stencil test is disabled by default.',
  related = {
    'Pass:setStencilWrite',
    'Pass:setDepthTest'
  }
}
