return {
  summary = 'Check if the Shader has a given stage.',
  description = 'Returns whether the Shader has a given stage.',
  arguments = {
    stage = {
      type = 'ShaderStage',
      description = 'The stage.'
    }
  },
  returns = {
    exists = {
      type = 'boolean',
      description = 'Whether the Shader has the stage.'
    }
  },
  variants = {
    {
      arguments = { 'stage' },
      returns = { 'exists' }
    }
  },
  related = {
    'Shader:getType'
  }
}
