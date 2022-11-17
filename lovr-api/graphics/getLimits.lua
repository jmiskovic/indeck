return {
  tag = 'graphics-misc',
  summary = 'Get the limits of the current GPU.',
  description = 'Returns limits of the current GPU.',
  arguments = {},
  returns = {
    limits = {
      type = 'table',
      description = '',
      table = {
        {
          name = 'textureSize2D',
          type = 'number',
          description = 'The maximum width/height of `2d` and `array` textures.'
        },
        {
          name = 'textureSize3D',
          type = 'number',
          description = 'The maximum width/height/depth of `3d` textures.'
        },
        {
          name = 'textureSizeCube',
          type = 'number',
          description = 'The maximum width/height of `cube` textures.'
        },
        {
          name = 'textureLayers',
          type = 'number',
          description = 'The maximum depth of `array` textures.'
        },
        {
          name = 'renderSize',
          type = 'table',
          description = [[
            The maximum width, height, and layer count of a texture (or texture view) used as a
            render target.
          ]]
        },
        {
          name = 'uniformBuffersPerStage',
          type = 'number',
          description = 'The maximum number of uniform buffers in a shader stage.'
        },
        {
          name = 'storageBuffersPerStage',
          type = 'number',
          description = 'The maximum number of storage buffers in a shader stage.'
        },
        {
          name = 'sampledTexturesPerStage',
          type = 'number',
          description = 'The maximum number of sampled textures in a shader stage.'
        },
        {
          name = 'storageTexturesPerStage',
          type = 'number',
          description = 'The maximum number of storage textures in a shader stage.'
        },
        {
          name = 'samplersPerStage',
          type = 'number',
          description = 'The maximum number of samplers in a shader stage.'
        },
        {
          name = 'resourcesPerShader',
          type = 'number',
          description = [[
            The maximum combined number of buffers, textures, and sampler variables in a Shader.
          ]]
        },
        {
          name = 'uniformBufferRange',
          type = 'number',
          description = [[
            The maximum range of bytes that can be bound to a uniform buffer in a shader.
          ]]
        },
        {
          name = 'storageBufferRange',
          type = 'number',
          description = [[
            The maximum range of bytes that can be bound to a storage buffer in a shader.
          ]]
        },
        {
          name = 'uniformBufferAlign',
          type = 'number',
          description = [[
            When binding a range of bytes to a uniform buffer binding in a shader, the byte offset
            of the range must be a multiple of this limit's value.
          ]]
        },
        {
          name = 'storageBufferAlign',
          type = 'number',
          description = [[
            When binding a range of bytes to a storage buffer binding in a shader, the byte offset
            of the range must be a multiple of this limit's value.
          ]]
        },
        {
          name = 'vertexAttributes',
          type = 'number',
          description = 'The maximum number of input attributes in a vertex shader.'
        },
        {
          name = 'vertexBufferStride',
          type = 'number',
          description = 'The maximum stride of a buffer used as a vertex buffer, in bytes.'
        },
        {
          name = 'vertexShaderOutputs',
          type = 'number',
          description = 'The maximum number of components output from a vertex shader.'
        },
        {
          name = 'clipDistances',
          type = 'number',
          description = 'The maximum number of clipping planes declared by a shader.'
        },
        {
          name = 'cullDistances',
          type = 'number',
          description = 'The maximum number of cull distances declared by a shader.'
        },
        {
          name = 'clipAndCullDistances',
          type = 'number',
          description = [[
            The maximum number of clipping planes and cull distances declared by a shader.
          ]]
        },
        {
          name = 'workgroupCount',
          type = 'table',
          description = 'The maximum values of `x`, `y`, and `z` in `Pass:compute`.'
        },
        {
          name = 'workgroupSize',
          type = 'table',
          description = [[
            The maximum values of `local_size_x`, `local_size_y`, and `local_size_z` declared in a
            compute shader.
          ]]
        },
        {
          name = 'totalWorkgroupSize',
          type = 'number',
          description = [[
            The maximum product of `local_size_x`, `local_size_y`, and `local_size_z` in a compute
            shader.
          ]]
        },
        {
          name = 'computeSharedMemory',
          type = 'number',
          description = 'The maximum number of bytes used by `shared` variables in compute shaders.'
        },
        {
          name = 'shaderConstantSize',
          type = 'number',
          description = [[
            The maximum number of bytes of push constants that can be in a Shader.  Push constants
            are shared between stages, so the stage with the largest amount of push constant data
            will count towards this limit.
          ]]
        },
        {
          name = 'indirectDrawCount',
          type = 'number',
          description = 'The maximum number of draws that can be issued by an indirect draw call.'
        },
        {
          name = 'instances',
          type = 'number',
          description = 'The maximum number of instances that can be rendered in a draw call.'
        },
        {
          name = 'anisotropy',
          type = 'number',
          description = [[
            The maximum value of the `anisotropy` parameter in `lovr.graphics.newSampler`.
          ]]
        },
        {
          name = 'pointSize',
          type = 'number',
          description = 'The maximum point size.'
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'limits' }
    }
  },
  notes = [[
    The limit ranges are as follows:

    <table>
      <thead>
        <tr>
          <td>Limit</td>
          <td>Minimum</td>
          <td>Maximum</td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>textureSize2D</code></td>
          <td>4096</td>
          <td></td>
        </tr>
        <tr>
          <td><code>textureSize3D</code></td>
          <td>256</td>
          <td></td>
        </tr>
        <tr>
          <td><code>textureSizeCube</code></td>
          <td>4096</td>
          <td></td>
        </tr>
        <tr>
          <td><code>textureLayers</code></td>
          <td>256</td>
          <td></td>
        </tr>
        <tr>
          <td><code>renderSize</code></td>
          <td>{ 4096, 4096, 6 }</td>
          <td></td>
        </tr>
        <tr>
          <td><code>uniformBuffersPerStage</code></td>
          <td>9</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>storageBuffersPerStage</code></td>
          <td>4</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>sampledTexturesPerStage</code></td>
          <td>32</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>storageTexturesPerStage</code></td>
          <td>4</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>samplersPerStage</code></td>
          <td>15</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>resourcesPerShader</code></td>
          <td>32</td>
          <td>32*</td>
        </tr>
        <tr>
          <td><code>uniformBufferRange</code></td>
          <td>65536</td>
          <td></td>
        </tr>
        <tr>
          <td><code>storageBufferRange</code></td>
          <td>134217728 (128MB)</td>
          <td>1073741824 (1GB)*</td>
        </tr>
        <tr>
          <td><code>uniformBufferAlign</code></td>
          <td></td>
          <td>256</td>
        </tr>
        <tr>
          <td><code>storageBufferAlign</code></td>
          <td></td>
          <td>64</td>
        </tr>
        <tr>
          <td><code>vertexAttributes</code></td>
          <td>16</td>
          <td>16*</td>
        </tr>
        <tr>
          <td><code>vertexBufferStride</code></td>
          <td>2048</td>
          <td>65535*</td>
        </tr>
        <tr>
          <td><code>vertexShaderOutputs</code></td>
          <td>64</td>
          <td></td>
        </tr>
        <tr>
          <td><code>clipDistances</code></td>
          <td>0</td>
          <td></td>
        </tr>
        <tr>
          <td><code>cullDistances</code></td>
          <td>0</td>
          <td></td>
        </tr>
        <tr>
          <td><code>clipAndCullDistances</code></td>
          <td>0</td>
          <td></td>
        </tr>
        <tr>
          <td><code>computeDispatchCount</code></td>
          <td>{ 65536, 65536, 65536 }</td>
          <td></td>
        </tr>
        <tr>
          <td><code>computeWorkgroupSize</code></td>
          <td>{ 128, 128, 64 }</td>
          <td></td>
        </tr>
        <tr>
          <td><code>computeWorkgroupVolume</code></td>
          <td>128</td>
          <td></td>
        </tr>
        <tr>
          <td><code>computeSharedMemory</code></td>
          <td>16384 (16KB)</td>
          <td></td>
        </tr>
        <tr>
          <td><code>pushConstantSize</code></td>
          <td>128</td>
          <td>256*</td>
        </tr>
        <tr>
          <td><code>indirectDrawCount</code></td>
          <td>1</td>
          <td></td>
        </tr>
        <tr>
          <td><code>instances</code></td>
          <td>134217727</td>
          <td></td>
        </tr>
        <tr>
          <td><code>anisotropy</code></td>
          <td>0.0</td>
          <td></td>
        </tr>
        <tr>
          <td><code>pointSize</code></td>
          <td>1.0</td>
          <td></td>
        </tr>
      </tbody>
    </table>

    Note: in the table above, `*` means that LÖVR itself is imposing a cap on the limit, instead of
    the GPU.
  ]],
  related = {
    'lovr.graphics.isFormatSupported',
    'lovr.graphics.getDevice',
    'lovr.graphics.getFeatures'
  }
}
