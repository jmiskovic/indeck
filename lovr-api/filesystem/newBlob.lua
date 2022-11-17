return {
  summary = 'Create a new Blob from a file.',
  description = 'Creates a new Blob that contains the contents of a file.',
  arguments = {
    filename = {
      type = 'string',
      description = 'The file to load.'
    }
  },
  returns = {
    blob = {
      type = 'Blob',
      description = 'The new Blob.'
    }
  },
  variants = {
    {
      arguments = { 'filename' },
      returns = { 'blob' }
    }
  },
  related = {
    'lovr.data.newBlob',
    'Blob'
  }
}
