return {
  summary = 'Get a Blob in the model.',
  description = 'Returns one of the Blobs in the model, by index.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the Blob to get.'
    }
  },
  returns = {
    blob = {
      type = 'Blob',
      description = 'The Blob object.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'blob' }
    }
  },
  related = {
    'ModelData:getBlobCount',
    'ModelData:getImage'
  }
}
