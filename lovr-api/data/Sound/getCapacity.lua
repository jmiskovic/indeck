return {
  summary = 'Get the number of frames that can be written to the Sound.',
  description = [[
    Returns the number of frames that can be written to the Sound.  For stream sounds, this is the
    number of frames that can be written without overwriting existing data.  For normal sounds, this
    returns the same value as `Sound:getFrameCount`.
  ]],
  arguments = {},
  returns = {
    capacity = {
      type = 'number',
      description = 'The number of frames that can be written to the Sound.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'capacity' }
    }
  },
  related = {
    'Sound:getFrameCount',
    'Sound:getSampleCount',
    'Source:getDuration'
  }
}
