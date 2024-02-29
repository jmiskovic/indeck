return {
  tag = 'buffer-metadata',
  summary = 'Get the stride of the Buffer, in bytes.',
  description = [[
    Returns the distance between each item in the Buffer, in bytes, or `nil` if the Buffer was not
    created with a format.
  ]],
  arguments = {},
  returns = {
    stride = {
      type = 'number',
      description = 'The stride of the Buffer, in bytes.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'stride' }
    }
  },
  notes = [[
    When a Buffer is created, the stride can be set explicitly, otherwise it will be automatically
    computed based on the fields in the Buffer.

    Strides can not be zero, and can not be smaller than the size of a single item.
  ]],
  related = {
    'Buffer:getSize',
    'Buffer:getLength'
  }
}
