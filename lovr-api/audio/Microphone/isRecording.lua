return {
  summary = 'Get whether the Microphone is recording.',
  description = 'Returns whether or not the Microphone is currently recording.',
  arguments = {},
  returns = {
    {
      name = 'recording',
      type = 'boolean',
      description = 'Whether the Microphone is recording.'
    }
  },
  related = {
    'Microphone:startRecording',
    'Microphone:stopRecording'
  }
}
