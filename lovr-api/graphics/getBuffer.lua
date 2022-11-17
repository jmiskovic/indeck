return {
  tag = 'graphics-objects',
  summary = 'Get a temporary Buffer.',
  description = 'Creates a temporary Buffer.',
  arguments = {
    length = {
      type = 'number',
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
      type = 'FieldType',
      description = 'The type of each item in the Buffer.'
    },
    format = {
      type = 'table',
      default = 'nil',
      description = [[
        A list of fields in the Buffer (see notes).  `nil` is a valid format, but means only `Blob`s
        can be written to the Buffer from Lua.
      ]],
      table = {
        {
          name = 'layout',
          type = 'BufferLayout',
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
      arguments = { 'length', 'type' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'data', 'type' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'length', 'format' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'data', 'format' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'blob', 'type' },
      returns = { 'buffer' }
    },
    {
      arguments = { 'blob', 'format' },
      returns = { 'buffer' }
    }
  },
  notes = [[
    The format table can contain a list of `FieldType`s or a list of tables to provide extra
    information about each field.  Each inner table has the following keys:

    - `type` is the `FieldType` of the field and is required.
    - `offset` is the byte offset of the field.  Any fields with a `nil` offset will be placed next
      to each other sequentially in memory, subject to any padding required by the Buffer's layout.
      In practice this means that an `offset` should be set for either all of the fields or none of
      them.
    - `location` is the vertex attribute location of each field.  This is used to match up each
      field with an attribute declared in a shader, and doesn't have any purpose when binding the
      buffer as a uniform or storage buffer.  Any fields with a `nil` location will use an
      autoincrementing location starting at zero.  Named locations are not currently supported, but
      may be added in the future.

    If no table or Blob is used to define the initial Buffer contents, its data will be undefined.

    There is currently a max of 16 fields.
  ]],
  related = {
    'lovr.graphics.newBuffer'
  }
}
