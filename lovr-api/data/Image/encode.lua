return {
  summary = 'Encode the Image as png.',
  description = 'Encodes the Image to an uncompressed png.  This intended mainly for debugging.',
  arguments = {},
  returns = {
    blob = {
      type = 'Blob',
      description = 'A new Blob containing the PNG image data.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'blob' }
    }
  },
  related = {
    'lovr.filesystem.write'
  }
}
