return {
  tag = 'playArea',
  summary = 'Get the width of the play area.',
  description = 'Returns the width of the play area, in meters.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the play area, in meters.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width' }
    }
  },
  related = {
    'lovr.headset.getBoundsDepth',
    'lovr.headset.getBoundsDimensions'
  }
}
