return {
  summary = 'Get the sample rate of the Microphone.',
  description = [[
    Returns the number of samples recorded each second.  Higher sample rates lead to higher quality
    audio, but they can reduce performance and may not be supported by all microphones.
  ]],
  arguments = {},
  returns = {
    {
      name = 'sampleRate',
      type = 'number',
      description = 'The number of samples recorded every second.'
    }
  },
  related = {
    'Microphone:getBitDepth',
    'Microphone:getChannelCount',
    'lovr.audio.newMicrophone'
  }
}
