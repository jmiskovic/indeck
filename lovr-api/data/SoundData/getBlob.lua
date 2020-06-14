return {
  summary = 'Get the bytes backing this SoundData as a Blob.',
  description = 'Returns a Blob containing the raw bytes of the SoundData.',
  arguments = {},
  returns = {
    {
      name = 'blob',
      type = 'Blob',
      description = 'The Blob instance containing the bytes for the `SoundData`.'
    }
  },
  related = {
    'Blob:getPointer',
    'TextureData:getBlob'
  }
}
