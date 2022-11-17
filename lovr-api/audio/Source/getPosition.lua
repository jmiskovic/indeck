return {
  tag = 'sourceEffects',
  summary = 'Get the position of the Source.',
  description = [[
    Returns the position of the Source, in meters.  Setting the position will cause the Source to
    be distorted and attenuated based on its position relative to the listener.
  ]],
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x coordinate.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Source:getOrientation',
    'Source:getPose',
    'lovr.audio.getPosition'
  }
}
