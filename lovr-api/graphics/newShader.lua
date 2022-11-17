return {
  tag = 'graphics-objects',
  summary = 'Create a new Shader.',
  description = [[
    Creates a Shader, which is a small program that runs on the GPU.

    Shader code is usually written in GLSL and compiled to SPIR-V bytecode.  SPIR-V is faster to
    load but requires a build step.  Either form can be used to create a shader.
  ]],
  arguments = {
    vertex = {
      type = 'string',
      description = [[
        A string, path to a file, or Blob containing GLSL or SPIR-V code for the vertex stage.  Can
        also be a `DefaultShader` to use that shader's vertex code.
      ]]
    },
    fragment = {
      type = 'string',
      description = [[
        A string, path to a file, or Blob containing GLSL or SPIR-V code for the fragment stage.
        Can also be a `DefaultShader` to use that shader's fragment code.
      ]]
    },
    compute = {
      type = 'string',
      description = [[
        A string, path to a file, or Blob containing GLSL or SPIR-V code for the compute stage.
      ]]
    },
    default = {
      type = 'DefaultShader',
      description = 'The default shader to use.'
    },
    options = {
      type = 'table',
      description = 'Shader options.',
      table = {
        {
          name = 'flags',
          type = 'table',
          description = [[
            A table of shader flags.  The keys of the table should be flag names or flag ID numbers.
            The values can be numbers or booleans, depending on the type of the flag as declared in
            the shader.
          ]]
        },
        {
          name = 'label',
          type = 'string',
          description = 'A label to use for the shader in debugging tools.'
        }
      }
    }
  },
  returns = {
    shader = {
      type = 'Shader',
      description = 'The new shader.'
    }
  },
  variants = {
    {
      description = [[
        Create a graphics shader.  It has a vertex stage that computes vertex positions, and a
        fragment stage that computes pixel colors.
      ]],
      arguments = { 'vertex', 'fragment', 'options' },
      returns = { 'shader' }
    },
    {
      description = 'Create a compute shader.',
      arguments = { 'compute', 'options' },
      returns = { 'shader' }
    },
    {
      description = [[
        Create a copy of one of the default shaders (used to provide different flags).
      ]],
      arguments = { 'default', 'options' },
      returns = { 'shader' }
    }
  },
  related = {
    'lovr.graphics.compileShader',
    'ShaderType',
    'ShaderStage'
  }
}
