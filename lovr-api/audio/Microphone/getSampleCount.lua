return {
  summary = 'Get the number of recorded audio samples.',
  description = [[
    Returns the number of audio samples the Microphone has recorded so far.  This will be zero if
    the Microphone hasn't started recording yet, see `Microphone:startRecording`.

    There's a limit on the number of samples the Microphone is able to hold, which can be set at
    creation time in `lovr.audio.newMicrophone`.  While the Microphone is recording, be sure to call
    `Microphone:getData` periodically to get a new chunk of audio in order to make room for more.
  ]],
  arguments = {},
  returns = {
    {
      name = 'samples',
      type = 'number',
      description = 'The number of recorded samples.'
    }
  },
  related = {
    'Microphone:getData',
    'Microphone:isRecording',
    'Microphone:startRecording',
    'Microphone:stopRecording',
    'lovr.audio.newMicrophone'
  }
}
