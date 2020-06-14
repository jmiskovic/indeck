return {
  summary = 'Encode the TextureData as png and write it to a file.',
  description = 'Encodes the TextureData to png and writes it to the specified file.',
  arguments = {
    {
      name = 'filename',
      type = 'string',
      description = 'The file to write the png data to.'
    }
  },
  returns = {
    {
      name = 'success',
      type = 'boolean',
      description = 'Whether or not the file was successfully written to.'
    }
  }
}
