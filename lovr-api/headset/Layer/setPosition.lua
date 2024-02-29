return {
  summary = 'Set the position of the layer.',
  description = 'Sets the position of the layer, in meters.',
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    }
  },
  related = {
    'Layer:getOrientation',
    'Layer:setOrientation',
    'Layer:getPose',
    'Layer:setPose'
  }
}
