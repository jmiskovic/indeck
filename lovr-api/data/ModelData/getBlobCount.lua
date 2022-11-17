return {
  summary = 'Get the number of Blobs stored in the model.',
  description = 'Returns the number of Blobs in the model.',
  arguments = {},
  returns = {
    count = {
      type = 'number',
      description = 'The number of Blobs in the model.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'count' }
    }
  },
  related = {
    'ModelData:getBlob',
    'ModelData:getImageCount'
  }
}
