return {
  summary = 'Get the bit depth of the SoundData.',
  description = [[
    Returns the number of bits taken up by each sample in the SoundData.  Higher bit depths mean the
    sound is higher quality and takes up more space.  This is usually 8 or 16.
  ]],
  arguments = {},
  returns = {
    {
      name = 'bitDepth',
      type = 'number',
      description = 'The size of each sample, in bits.'
    }
  },
  related = {
    'AudioStream:getBitDepth',
    'Source:getBitDepth'
  }
}
