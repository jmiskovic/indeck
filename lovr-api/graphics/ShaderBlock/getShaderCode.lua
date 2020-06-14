return {
  summary = 'Get a GLSL string that defines the ShaderBlock in a Shader.',
  description = [[
    Before a ShaderBlock can be used in a Shader, the Shader has to have the block's variables
    defined in its source code.  This can be a tedious process, so you can call this function to
    return a GLSL string that contains this definition.  Roughly, it will look something like this:

        uniform <label> {
          <type> <name>[<count>];
        };
  ]],
  arguments = {
    {
      name = 'label',
      type = 'string',
      description = [[
        The label of the block in the shader code.  This will be used to identify it when using
        Shader:sendBlock.
      ]]
    }
  },
  returns = {
    {
      name = 'code',
      type = 'string',
      description = 'The code that can be prepended to a Shader.'
    }
  },
  example = [=[
    lovr.graphics.newShader(
      block:getShaderCode() .. [[
      // The rest of the shader here
      ]]
    )
  ]=],
  related = {
    'lovr.graphics.newShader',
    'lovr.graphics.newComputeShader'
  }
}
