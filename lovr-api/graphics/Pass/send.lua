return {
  tag = 'shader-inputs',
  summary = 'Set the value of a shader variable.',
  description = [[
    Sends a value to a variable in the Pass's active `Shader`.  The active shader is changed using
    using `Pass:setShader`.
  ]],
  arguments = {
    name = {
      type = 'string',
      description = 'The name of the Shader variable.'
    },
    binding = {
      type = 'number',
      description = 'The binding number of the Shader variable.'
    },
    buffer = {
      type = 'Buffer',
      description = 'The Buffer to assign.'
    },
    texture = {
      type = 'Texture',
      description = 'The Texture to assign.'
    },
    sampler = {
      type = 'Sampler',
      description = 'The Sampler to assign.'
    },
    constant = {
      type = '*',
      description = 'Numbers or vectors to assign to the push constant.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'name', 'buffer' },
      returns = {}
    },
    {
      arguments = { 'name', 'texture' },
      returns = {}
    },
    {
      arguments = { 'name', 'sampler' },
      returns = {}
    },
    {
      arguments = { 'name', 'constant' },
      returns = {}
    },
    {
      arguments = { 'binding', 'buffer' },
      returns = {}
    },
    {
      arguments = { 'binding', 'texture' },
      returns = {}
    },
    {
      arguments = { 'binding', 'sampler' },
      returns = {}
    }
  },
  notes = [[
    Shader variables can be in different "sets".  Variables changed by this function must be in set
    #2, because LÖVR uses set #0 and set #1 internally.

    The new value will persist until a new shader is set that uses a different "type" for the
    binding number of the variable.  See `Pass:setShader` for more details.
  ]],
  example = [=[
    function lovr.load()
      shader = lovr.graphics.newShader([[
        layout(set = 2, binding = 0) uniform sampler mySampler;
        layout(set = 2, binding = 1) uniform Colors { vec4 colors[256]; };
        layout(set = 2, binding = 2) uniform texture2D rocks;

        vec4 lovrmain() {
          return DefaultPosition;
        }
      ]], 'unlit')

      clampler = lovr.graphics.newSampler({ wrap = 'clamp' })
      colorBuffer = lovr.graphics.newBuffer(256, 'vec4')
      rockTexture = lovr.graphics.newTexture('rocks.jpg')
    end

    function lovr.draw(pass)
      pass:setShader(shader)
      pass:send('mySampler', clampler)
      pass:send('Colors', colorBuffer)
      pass:send('rocks', rockTexture)
      -- Draw
    end
  ]=]
}
