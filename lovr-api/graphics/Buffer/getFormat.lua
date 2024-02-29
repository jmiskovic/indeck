return {
  tag = 'buffer-metadata',
  summary = 'Get the format of the Buffer.',
  description = 'Returns the format the Buffer was created with.',
  arguments = {},
  returns = {
    format = {
      type = 'table',
      description = 'A list of fields comprising the format.',
      table = {
        {
          name = '[].name',
          type = 'string',
          description = 'The name of the field (if fields were created with names).'
        },
        {
          name = '[].type',
          type = '*',
          description = 'The `DataType` of the field, or a recursive table with the sub-format.'
        },
        {
          name = '[].offset',
          type = 'number',
          description = 'The offset of the field relative to its parent, in bytes.'
        },
        {
          name = '[].length',
          type = 'number',
          description = 'The array length of the field, or `nil` if it\'s not an array.'
        },
        {
          name = '[].stride',
          type = 'number',
          description = 'The stride of the field in bytes, or `nil` if it\'s not an array.'
        }
      }
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
      buffer = lovr.graphics.newBuffer({
        { 'a', 'float' },
        { 'b', 'un16x2' }
      })

      for i, field in ipairs(buffer:getFormat()) do
        print(('%s: %s'):format(field.name, field.type))
      end

      -- prints the following:
      -- a: f32
      -- b: un16x2
    end
  ]=],
  related = {
    'Buffer:getSize',
    'Buffer:getLength',
    'Buffer:getStride'
  }
}
