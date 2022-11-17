return {
  summary = 'Get the duration of the Sound.',
  description = 'Returns the duration of the Sound, in seconds.',
  arguments = {},
  returns = {
    duration = {
      type = 'number',
      description = 'The duration of the Sound, in seconds.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'duration' }
    }
  },
  notes = 'This can be computed as `(frameCount / sampleRate)`.',
  related = {
    'Sound:getFrameCount',
    'Sound:getSampleCount',
    'Sound:getSampleRate',
    'Source:getDuration'
  }
}
