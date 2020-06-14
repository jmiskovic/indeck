return {
  summary = 'Get the bit depth of the Microphone.',
  description = [[
    Returns the number of bits occupied for each recorded sample.  This is a rough indicator of the
    quality of the recording, and is 16 by default.
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
    'Microphone:getChannelCount',
    'Microphone:getSampleRate',
    'lovr.audio.newMicrophone'
  }
}
