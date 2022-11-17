return {
  tag = 'pipeline',
  summary = 'Set whether draws write to the depth buffer.',
  description = [[
    Sets whether draws write to the depth buffer.  When a pixel is drawn, if depth writes are
    enabled and the pixel passes the depth test, the depth buffer will be updated with the pixel's
    depth value.
  ]],
  arguments = {
    write = {
      type = 'boolean',
      description = 'Whether the depth buffer should be affected by draws.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'write' },
      returns = {}
    }
  },
  notes = 'The default depth write is `true`.',
  related = {
    'Pass:setStencilWrite',
    'Pass:setColorWrite',
    'Pass:setDepthTest'
  }
}
