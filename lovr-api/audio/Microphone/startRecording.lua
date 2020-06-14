return {
  summary = 'Start recording.',
  description = [[
    Starts recording audio samples from the Microphone.  You can use `Microphone:getData` to
    periodically read the captured audio samples, and use `Microphone:stopRecording` when you're
    done.
  ]],
  arguments = {},
  returns = {},
  related = {
    'Microphone:getData',
    'Microphone:stopRecording',
    'Microphone:isRecording'
  }
}
