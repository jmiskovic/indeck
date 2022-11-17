return {
  summary = 'Get the bytes backing this Image as a `Blob`.',
  description = 'Returns a Blob containing the raw bytes of the Image.',
  arguments = {},
  returns = {
    blob = {
      type = 'Blob',
      description = 'The Blob instance containing the bytes for the `Image`.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'blob' }
    }
  },
  related = {
    'Blob:getPointer',
    'Sound:getBlob'
  }
}
