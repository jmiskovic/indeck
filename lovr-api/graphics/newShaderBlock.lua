return {
  tag = 'graphicsObjects',
  summary = 'Create a new ShaderBlock.',
  description = [[
    Creates a new ShaderBlock from a table of variable definitions with their names and types.
  ]],
  arguments = {
    {
      name = 'type',
      type = 'BlockType',
      description = 'Whether the block will be used for read-only uniform data or compute shaders.'
    },
    {
      name = 'uniforms',
      type = 'table',
      description = [[
        A table where the keys are uniform names and the values are uniform types.  Uniform arrays
        can be specified by supplying a table as the uniform's value containing the type and the
        array size.
      ]]
    },
    {
      name = 'flags',
      type = 'table',
      default = '{}',
      description = 'Optional settings.',
      table = {
        {
          name = 'usage',
          type = 'BufferUsage',
          default = 'dynamic',
          description = 'How the data in the block will be updated.'
        },
        {
          name = 'readable',
          type = 'boolean',
          default = 'false',
          description = 'Whether the data in the block can be read using `ShaderBlock:read`.'
        }
      }
    }
  },
  returns = {
    {
      name = 'shaderBlock',
      type = 'ShaderBlock',
      description = 'The new ShaderBlock.'
    }
  },
  notes = [[
    `compute` blocks can only be true if compute shaders are supported, see
    `lovr.graphics.getFeatures`.  Compute blocks may be slightly slower than uniform blocks, but
    they can also be much, much larger.  Uniform blocks are usually limited to around 16 kilobytes
    in size, depending on hardware.
  ]],
  example = {
    description = 'Create a ShaderBlock to hold a block of useful shader data.',
    code = [=[
      function lovr.load()
        block = lovr.graphics.newShaderBlock('uniform', {
          time = 'float',
          lightCount = 'int',
          lightPositions = { 'vec3', 16 },
          lightColors = { 'vec3', 16 },
          objectCount = 'int',
          objectTransforms = { 'mat4', 256 }
        }, 'uniform')

        shader = lovr.graphics.newShader(
          block:getShaderCode('Block') .. -- Define the block in the shader
          [[
            vec4 lovrMain() {
              // ...use the object transforms from the block
              return lovrProjection * lovrTransform * lovrVertex;
            }
          ]],

          block:getShaderCode('Block') ..
          [[
            vec4 lovrMain() {
              // ...use the lights from the block
              return lovrGraphicsColor * texture(lovrDiffuseTexture, lovrTexCoord);
            }
          ]]
        )

        -- Bind the block to the shader
        shader:sendBlock('Block', block)
      end

      -- Update the data in the block every frame
      function lovr.update(dt)
        block:send('time', lovr.timer.getTime())
        block:send('lightCount', lightCount)
        block:send('lightPositions', { { x, y, z}, { x, y, z } })
        -- etc.
      end
    ]=]
  },
  related = {
    'lovr.graphics.newShader',
    'lovr.graphics.newComputeShader'
  }
}
