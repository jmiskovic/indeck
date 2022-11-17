return {
  summary = 'Change the data in the Buffer.',
  description = [[
    Changes data in a temporary Buffer using a table or a Blob.  Permanent buffers can be changed
    using `Pass:copy`.
  ]],
  arguments = {
    data = {
      type = 'table',
      description = 'A flat or nested table of items to copy to the Buffer (see notes for format).'
    },
    sourceIndex = {
      type = 'number',
      default = '1',
      description = 'The index in the table to copy from.'
    },
    destinationIndex = {
      type = 'number',
      default = '1',
      description = 'The index of the first value in the Buffer to update.'
    },
    count = {
      type = 'number',
      default = 'nil',
      description = [[
        The number of values to update.  `nil` will copy as many items as possible, based on the
        lengths of the source and destination.
      ]]
    },
    blob = {
      type = 'Blob',
      description = 'The Blob to copy data from.'
    },
    sourceOffset = {
      type = 'number',
      default = '0',
      description = 'A byte offset into the Blob to copy from.'
    },
    destinationOffset = {
      type = 'number',
      default = '0',
      description = 'A byte offset in the Buffer to copy to.'
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
      arguments = { 'data', 'sourceIndex', 'destinationIndex', 'count' },
      returns = {}
    },
    {
      arguments = { 'blob', 'sourceOffset', 'destinationOffset', 'size' },
      returns = {}
    }
  },
  notes = [[
    When using a table, the table can contain a nested table for each value in the Buffer, or it can
    be a flat list of field component values.  It is not possible to mix both nested tables and flat
    values.

    For each item updated, components of each field in the item (according to the Buffer's format)
    are read from either the nested subtable or the table itself.  A single number can be used to
    update a field with a scalar type.  Multiple numbers or a `lovr.math` vector can be used to
    update a field with a vector or mat4 type.  Multiple numbers can be used to update mat2 and mat3
    fields.  When updating normalized field types, components read from the table will be clamped to
    the normalized range ([0,1] or [-1,1]).  In the Buffer, each field is written at its byte offset
    according to the Buffer's format, and subsequent items are separated by the byte stride of the
    Buffer.  Any missing components for an updated field will be set to zero.
  ]],
  example = [[
    function lovr.draw(pass)
      buffer = lovr.graphics.getBuffer(3, 'floats')
      buffer:setData({ { 1.0 }, { 2.0 }, { 3.0 } })
      buffer:setData({ 1.0, 2.0, 3.0 })

      buffer = lovr.graphics.getBuffer(5, { 'vec3', 'vec3', 'vec2' })
      buffer:setData({ vec3(1, 2, 3), vec3(4, 5, 6), vec2(7, 8) })
      buffer:setData({ { 1, 2, 3, 4, 5, 6, 7, 8 } })
      buffer:setData({ 1, 2, 3, 4, 5, 6, 7, 8 })
      buffer:setData({
        { x1, y1, z1, nx1, ny1, nz1, u1, v1 },
        { x2, y2, z2, vec3(nx, ny, nz) }
      }, 1, 3, 2)
    end
  ]],
  related = {
    'Pass:copy'
  }
}
