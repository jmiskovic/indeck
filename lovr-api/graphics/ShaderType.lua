return {
  summary = 'Different types of Shaders.',
  description = 'The two types of shaders that can be created.',
  values = {
    {
      name = 'graphics',
      description = 'A graphics shader with a vertex and pixel stage.'
    },
    {
      name = 'compute',
      description = 'A compute shader with a single compute stage.'
    }
  },
  related = {
    'lovr.graphics.newShader',
    'Shader:getType',
    'ShaderStage'
  }
}
