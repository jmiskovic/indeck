return {
  summary = 'Get the type name of the object.',
  description = 'Returns the name of the object\'s type as a string.',
  arguments = {},
  returns = {
    type = {
      type = 'string',
      description = 'The type of the object.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'type' }
    }
  },
  example = [[
    function isTexture(obj)
      return type(obj) == 'userdata' and obj:type() == 'Texture'
    end
  ]]
}
