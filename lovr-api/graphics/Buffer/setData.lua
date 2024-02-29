return {
  tag = 'buffer-transfer',
  summary = 'Change the data in the Buffer.',
  description = 'Copies data to the Buffer from either a table, `Blob`, or `Buffer`.',
  arguments = {
    table = {
      type = 'table',
      description = 'A flat or nested table of items to copy to the Buffer (see notes for format).'
    },
    destinationIndex = {
      type = 'number',
      default = '1',
      description = 'The index of the first value in the Buffer to update.'
    },
    sourceIndex = {
      type = 'number',
      default = '1',
      description = 'The index in the table to copy from.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of items to copy.  `nil` will copy as many items as possible, based on the
        lengths of the source and destination.
      ]]
    },
    ['...numbers'] = {
      type = 'number',
      description = 'Numerical components to copy to the buffer.'
    },
    vector = {
      type = '*',
      description = 'Vector objects to copy to the buffer.'
    },
    blob = {
      type = 'Blob',
      description = 'The Blob to copy data from.'
    },
    buffer = {
      type = 'Buffer',
      description = 'The Buffer to copy data from.'
    },
    sourceOffset = {
      type = 'number',
      default = '0',
      description = 'The byte offset to copy from.'
    },
    destinationOffset = {
      type = 'number',
      default = '0',
      description = 'The byte offset to copy to.'
    },
    size = {
      type = 'number',
      default = 'nil',
      description = 'The number of bytes to copy.  If nil, copies as many bytes as possible.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'table', 'destinationIndex', 'sourceIndex', 'count' },
      returns = {}
    },
    {
      description = 'Copies a single field to a buffer with numbers (buffer length must be 1).',
      arguments = { '...numbers' },
      returns = {}
    },
    {
      description = 'Copies a single vector to a buffer (buffer length must be 1).',
      arguments = { 'vector' },
      returns = {}
    },
    {
      arguments = { 'blob', 'destinationOffset', 'sourceOffset', 'size' },
      returns = {}
    },
    {
      arguments = { 'buffer', 'destinationOffset', 'sourceOffset', 'size' },
      returns = {}
    }
  },
  notes = [[
    One gotcha is that unspecified fields will be set to zero.  Here's an example:

        buffer = lovr.graphics.newBuffer({{ 'x', 'int' }, { 'y', 'int' }})
        buffer:setData({ x = 1, y = 1 }) -- set the data
        buffer:setData({ x = 1 }) -- set the data, partially
        -- buffer data is now {x=1, y=0}!

    This doesn't apply to separate items in the buffer.  For example, if the Buffer's length is 2
    and only the 1st item is set, the second item will remain undisturbed:

        buffer = lovr.graphics.newBuffer({{ 'x', 'int' }, { 'y', 'int' }}, 2)
        buffer:setData({{ x = 1, y = 1 }, { x = 2, y = 2 }}) -- set the data
        buffer:setData({{ x = 1 }}) -- set one item, partially
        -- buffer data is now {{x=1, y=0}, {x=2, y=2}}
  ]],
  example = {
    description = 'Various examples of copying different formats.',
    code = [[
      function lovr.load()
        buffer = lovr.graphics.newBuffer('int', 3)
        buffer:setData({ 1, 2, 3 })

        buffer = lovr.graphics.newBuffer('vec3', 2)
        buffer:setData({ 1,2,3, 4,5,6 })
        buffer:setData({ { 1, 2, 3 }, { 4, 5, 6 } })
        buffer:setData({ vec3(1, 2, 3), vec3(4, 5, 6) })

        -- When the Buffer's length is 1, wrapping in table is optional:
        buffer = lovr.graphics.newBuffer('vec3')
        buffer:setData(1, 2, 3)
        buffer:setData(vec3(1, 2, 3))

        -- Same for key-value structs
        buffer = lovr.graphics.newBuffer({
          { 'x', 'float' },
          { 'y', 'float' }
        })
        buffer:setData({ x = 1, y = 2 })

        -- Key/value formats
        buffer = lovr.graphics.newBuffer({
          { 'x', 'float' },
          { 'y', 'float' }
        }, 3)
        buffer:setData({
          { x = 1, y = 2 },
          { x = 3, y = 4 },
          { x = 5, y = 6 }
        })
        buffer:setData({ 1, 2, 3, 4, 5, 6 })
        buffer:setData({ { 1, 2 }, { 3, 4 }, { 5, 6 } })

        -- Nested formats
        buffer = lovr.graphics.newBuffer({
          { 'a', {
            {'b', {
              'c', 'float'
            }}
          }}
        })
        buffer:setData({ a = { b = { c = 42 } } })

        -- Inner arrays
        buffer = lovr.graphics.newBuffer({
          { 'positions', 'vec3', 10 },
          { 'sizes', 'float', 10 },
          layout = 'std140'
        })
        local data = { positions = {}, sizes = {} }
        for i = 1, buffer:getLength() do
          data.positions[i] = vec3(i, i, i)
          data.sizes[i] = i
        end
        buffer:setData(data)
      end
    ]]
  }
}
