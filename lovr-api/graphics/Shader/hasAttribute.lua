return {
  summary = 'Check if the Shader has a given vertex attribute.',
  description = 'Returns whether the Shader has a vertex attribute, by name or location.',
  arguments = {
    name = {
      type = 'string',
      description = 'The name of an attribute.'
    },
    location = {
      type = 'number',
      description = 'The location of an attribute.'
    }
  },
  returns = {
    exists = {
      type = 'boolean',
      description = 'Whether the Shader has the attribute.'
    }
  },
  variants = {
    {
      arguments = { 'name' },
      returns = { 'exists' }
    },
    {
      arguments = { 'location' },
      returns = { 'exists' }
    }
  },
  example = [=[
    function lovr.load()
      shader = lovr.graphics.newShader([[
        layout(location = 7) in uint coolAttribute;

        vec4 lovrmain() {
          return DefaultPosition;
        }
      ]], [[
        vec4 lovrmain() {
          return DefaultColor;
        }
      ]])

      print(shader:hasAttribute('coolAttribute')) --> true
      print(shader:hasAttribute(7)) --> true
      print(shader:hasAttribute(8)) --> false
    end
  ]=]
}
