return {
  summary = 'Get the number of channels recorded by the Microphone.',
  description = [[
    Returns the number of channels recorded by the Microphone.  One recorded channel will result in
    a mono sound, and there will be two channels for a stereo sound.  Most microphones only support
    recording a single channel.
  ]],
  arguments = {},
  returns = {
    {
      name = 'channels',
      type = 'number',
      description = 'The number of channels recorded.'
    }
  },
  related = {
    'Microphone:getBitDepth',
    'Microphone:getSampleRate',
    'lovr.audio.newMicrophone'
  }
}
