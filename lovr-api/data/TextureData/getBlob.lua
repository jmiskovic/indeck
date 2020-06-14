return {
  summary = 'Get the bytes backing this TextureData as a `Blob`.',
  description = 'Returns a Blob containing the raw bytes of the TextureData.',
  arguments = {},
  returns = {
    {
      name = 'blob',
      type = 'Blob',
      description = 'The Blob instance containing the bytes for the `TextureData`.'
    }
  },
  related = {
    'Blob:getPointer',
    'SoundData:getBlob'
  }
}
