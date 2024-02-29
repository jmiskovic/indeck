return {
  summary = 'Get the position of the layer.',
  description = 'Returns the position of the layer, in meters.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x position of the layer.'
    },
    y = {
      type = 'number',
      description = 'The y position of the layer.'
    },
    z = {
      type = 'number',
      description = 'The z position of the layer.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Layer:getOrientation',
    'Layer:setOrientation',
    'Layer:getPose',
    'Layer:setPose'
  }
}
