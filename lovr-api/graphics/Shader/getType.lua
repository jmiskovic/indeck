return {
  summary = 'Get the type of the Shader.',
  description = 'Returns whether the shader is a graphics or compute shader.',
  arguments = {},
  returns = {
    type = {
      type = 'ShaderType',
      description = 'The type of the Shader.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'type' }
    }
  },
  related = {
    'Shader:hasStage',
    'lovr.graphics.newShader'
  }
}
