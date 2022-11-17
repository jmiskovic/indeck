return {
  summary = 'Get the format of the Buffer.',
  description = [[
    Returns the format of the Buffer.  This is the list of fields that comprise each item in the
    buffer.  Each field has a type, byte offset, and vertex attribute location.
  ]],
  arguments = {},
  returns = {
    format = {
      type = 'table',
      description = 'The format of the Buffer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'format' }
    }
  },
  example = [=[
    function lovr.load()
      buffer = lovr.graphics.newBuffer(1, { 'vec3', 'vec3', 'vec2' })

      for i, field in ipairs(buffer:getFormat()) do
        local type, offset, location = field.type, field.offset, field.location
        local template = 'Field: %d: Type = %s, Offset = %d, Location = %d'
        print(template:format(i, type, offset, location))
      end

      -- prints the following:
      -- Field 1: Type = f32x3, Offset = 0, Location = 0
      -- Field 2: Type = f32x3, Offset = 12, Location = 1
      -- Field 3: Type = f32x2, Offset = 24, Location = 2
    end
  ]=],
  related = {
    'Buffer:getSize',
    'Buffer:getLength',
    'Buffer:getStride'
  }
}
