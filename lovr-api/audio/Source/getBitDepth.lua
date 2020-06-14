return {
  summary = 'Get the bit depth of the Source.',
  description = [[
    Returns the number of bits per sample in the Source.  This is a rough indicator of the
    "resolution" or quality of the Source.  It's usually 16 or 32.
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
    'AudioStream:getBitDepth'
  }
}
