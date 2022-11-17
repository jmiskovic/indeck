return {
  summary = 'Get Readback\'s data as an Image.',
  description = 'Returns the Readback\'s data as an Image.',
  arguments = {},
  returns = {
    image = {
      type = 'Image',
      description = 'The Image.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'image' }
    }
  },
  notes = 'If the Readback is not reading back a Texture, returns `nil`.',
  related = {
    'Readback:getData',
    'Readback:getBlob'
  }
}
