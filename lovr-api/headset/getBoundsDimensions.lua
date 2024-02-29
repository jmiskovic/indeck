return {
  tag = 'playArea',
  summary = 'Get the size of the play area.',
  description = 'Returns the size of the play area, in meters.',
  arguments = {},
  returns = {
    width = {
      type = 'number',
      description = 'The width of the play area, in meters.'
    },
    depth = {
      type = 'number',
      description = 'The depth of the play area, in meters.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'width', 'depth' }
    }
  },
  related = {
    'lovr.headset.getBoundsWidth',
    'lovr.headset.getBoundsDepth',
    'lovr.headset.getBoundsGeometry'
  }
}
