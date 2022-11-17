return {
  summary = 'Clone a Shader.',
  description = [[
    Clones a shader.  This creates an inexpensive copy of it with different flags.  It can be used
    to create several variants of a shader with different behavior.
  ]],
  arguments = {
    source = {
      type = 'Shader',
      description = 'The Shader to clone.'
    },
    flags = {
      type = 'table',
      description = 'The flags used by the clone.'
    }
  },
  returns = {
    shader = {
      type = 'Shader',
      description = 'The new Shader.'
    }
  },
  variants = {
    {
      arguments = { 'source', 'flags' },
      returns = { 'shader' }
    }
  }
}
