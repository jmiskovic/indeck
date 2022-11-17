return {
  summary = 'Get Readback\'s data as a Blob.',
  description = 'Returns the Readback\'s data as a Blob.',
  arguments = {},
  returns = {
    blob = {
      type = 'Blob',
      description = 'The Blob.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'blob' }
    }
  },
  notes = 'If the Readback is reading back a Texture, returns `nil`.',
  related = {
    'Readback:getData',
    'Readback:getImage'
  }
}
