return {
  tag = 'shaders',
  summary = 'Set the active Shader.',
  description = [[
    Sets the active shader.  In a render pass, the Shader will affect all drawing operations until
    it is changed again.  In a compute pass, the Shader will be run when `Pass:compute` is called.
  ]],
  arguments = {
    shader = {
      type = 'Shader',
      description = 'The shader to use.'
    },
    default = {
      type = 'DefaultShader',
      description = 'One of the default shaders to use.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'shader' },
      returns = {}
    },
    {
      description = 'Use one of the default shaders for drawing.',
      arguments = { 'default' },
      returns = {}
    },
    {
      description = 'Switch back to using an automatic shader for drawing.',
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    Changing the shader will preserve resource bindings (the ones set using `Pass:send`) **unless**
    the new shader declares a resource for a binding number using a different type than the current
    shader.  In this case, the resource "type" means one of the following:

    - Uniform buffer (`uniform`).
    - Storage buffer (`buffer`).
    - Sampled texture, (`uniform texture<type>`).
    - Storage texture, (`uniform image<type>`).
    - Sampler (`uniform sampler`).

    If the new shader doesn't declare a resource in a particular binding number, any resource there
    will be preserved.

    If there's a clash in resource types like this, the variable will be "cleared".  Using a
    buffer variable that has been cleared is not well-defined, and may return random data or even
    crash the GPU.  For textures, white pixels will be returned.  Samplers will use `linear`
    filtering and the `repeat` wrap mode.

    Changing the shader will not clear push constants set in the `Constants` block.
  ]],
  related = {
    'Pass:send',
    'Pass:compute'
  }
}
