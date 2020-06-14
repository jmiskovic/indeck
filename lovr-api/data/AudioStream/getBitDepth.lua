return {
  summary = 'Get the bit depth of the AudioStream.',
  description = [[
    Returns the number of bits per sample in the stream's sound data.  This is a rough indicator of
    the "resolution" of the sound, and is usually 16.
  ]],
  arguments = {},
  returns = {
    {
      name = 'bits',
      type = 'number',
      description = 'The number of bits per sample.'
    }
  },
  related = {
    'SoundData:getBitDepth',
    'Source:getBitDepth'
  }
}
