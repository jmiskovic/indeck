return {
  deprecated = true,
  tag = 'graphics-objects',
  summary = 'Get a temporary Buffer.',
  description = 'Returns a temporary Buffer.',
  arguments = {
    size = {
      type = 'number',
      description = 'The size of the Buffer, in bytes.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the Buffer.'
    },
    data = {
      type = 'table',
      description = [[
        The initial data to put into the Buffer.  The length of the Buffer will be determined by the
        contents of the table.  The contents can be a mix of tables, numbers, and vectors, but the
        length calculation requires each field to consistently use one type of data.
      ]]
    },
    blob = {
      type = 'Blob',
      description = [[
        A Blob with the initial contents of the Buffer.  The size of the Blob will be used to
        determine the length of the Buffer.
      ]]
    },
    type = {
      type = 'DataType',
      description = 'The type of each item in the Buffer.'
    },
    format = {
      type = 'table',
      description = 'A list of fields in the Buffer.',
      table = {
        {
          name = 'layout',
          type = 'DataLayout',
          default = 'packed',
          description = 'How to lay out the Buffer fields in memory.'
        },
        {
          name = 'stride',
          type = 'number',
          description = [[
            The stride of the Buffer, in bytes.  When `nil`, the stride will be automatically
            computed based on the fields.  The stride can not be zero or smaller than the max byte
            occupied by one of the fields.  The layout of the Buffer may adjust the stride.
          ]]
        }
      }
    }
  },
  returns = {
    buffer = {
      type = 'Buffer',
      description = 'The new Buffer.'
    }
  },
  variants = {
    {
      arguments = { 'size' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'blob' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'format', 'length' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'format', 'data' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'format', 'blob' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'type', 'length' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'type', 'data' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'type', 'blob' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'length', 'type' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'data', 'type' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'length', 'format' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'data', 'format' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'blob', 'type' },
      returns = { 'buffer' }
    },
    {
      deprecated = true,
      arguments = { 'blob', 'format' },
      returns = { 'buffer' }
    }
  },
  notes = [[
    The format table can contain a list of `DataType`s or a list of tables to provide extra
    information about each field.  Each inner table has the following keys:

    - `type` is the `DataType` of the field and is required.
    - `name` is the name of the field, used to match table keys and vertex attribute names.
    - `offset` is the byte offset of the field.  Any fields with a `nil` offset will be placed next
      to each other sequentially in memory, subject to any padding required by the Buffer's layout.
      In practice this means that you probably want to provide an `offset` for either all of the
      fields or none of them.
    - `length` is the array size of the field.

    As a shorthand, the name, type, and optionally the length of a field can be provided as a list
    instead of using keys.

    If no table or Blob is used to define the initial Buffer contents, its data will be undefined.
  ]],
  example = {
    description = 'Examples of different buffer formats.',
    code = [[
      -- 2 matrices
      lovr.graphics.getBuffer('mat4', 2)

      -- 3 integers, with initial data
      lovr.graphics.getBuffer('int', { 1, 2, 3 })

      -- a simple mesh:
      lovr.graphics.getBuffer({
        { name = 'VertexPosition', type = 'vec3' },
        { name = 'VertexColor', type = 'color' }
      }, 4)

      -- a uniform buffer with vec3's, using the std140 packing
      lovr.graphics.getBuffer({ 'vec3', layout = 'std140' }, data)

      -- a uniform buffer with key-value fields
      lovr.graphics.getBuffer({
        { 'AmbientColor', 'vec3' },
        { 'LightPosition', 'vec3' },
        { 'LightType', 'u32' },
        { 'LightColor', 'vec4' },
        layout = 'std140'
      })

      -- a buffer with nested structure and array types
      lovr.graphics.getBuffer({
        { 'globals', {
          { 'ObjectCount', 'int' },
          { 'WorldSize', 'vec2' },
          { 'Scale', 'float' }
        }},
        { 'materials', {
          { 'Color', 'vec4' },
          { 'Glow', 'vec3' },
          { 'Roughness', 'float' }
        }, length = 32 },
        layout = 'std430'
      })

      -- a buffer using a variable from a shader:
      lovr.graphics.getBuffer(shader:getBufferFormat('transforms'))
    ]]
  }
}
