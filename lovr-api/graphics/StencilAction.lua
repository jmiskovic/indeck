return {
  summary = 'Different ways of updating the stencil buffer.',
  description = 'Different ways of updating the stencil buffer with `Pass:setStencilWrite`.',
  values = {
    {
      name = 'keep',
      description = 'Stencil buffer pixels will not be changed by draws.'
    },
    {
      name = 'zero',
      description = 'Stencil buffer pixels will be set to zero.'
    },
    {
      name = 'replace',
      description = 'Stencil buffer pixels will be replaced with a custom value.'
    },
    {
      name = 'increment',
      description = 'Stencil buffer pixels will be incremented each time they\'re rendered to.'
    },
    {
      name = 'decrement',
      description = 'Stencil buffer pixels will be decremented each time they\'re rendered to.'
    },
    {
      name = 'incrementwrap',
      description = 'Similar to increment, but will wrap around to 0 when it exceeds 255.'
    },
    {
      name = 'decrementwrap',
      description = 'Similar to decrement, but will wrap around to 255 when it goes below 0.'
    },
    {
      name = 'invert',
      description = 'The bits in the stencil buffer pixels will be inverted.'
    }
  },
  related = {
    'Pass:setStencilWrite',
    'Pass:setStencilTest',
    'Pass:setColorWrite'
  }
}
