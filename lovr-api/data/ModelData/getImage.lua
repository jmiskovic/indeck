return {
  summary = 'Get an Image in the model.',
  description = 'Returns one of the Images in the model, by index.',
  arguments = {
    index = {
      type = 'number',
      description = 'The index of the Image to get.'
    }
  },
  returns = {
    image = {
      type = 'Image',
      description = 'The Image object.'
    }
  },
  variants = {
    {
      arguments = { 'index' },
      returns = { 'image' }
    }
  },
  related = {
    'ModelData:getImageCount',
    'ModelData:getBlob'
  }
}
