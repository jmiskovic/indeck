return {
  summary = 'Encode the TextureData as png.',
  description = 'Encodes the TextureData to a png.',
  arguments = {},
  returns = {
    {
      name = 'blob',
      type = 'Blob',
      description = 'A new Blob containing the PNG image data.'
    }
  },
  related = {
    'lovr.filesystem.write'
  }
}
