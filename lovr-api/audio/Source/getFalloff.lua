return {
  summary = 'Get the falloff parameters for the Source.',
  description = [[
    Returns parameters that control how the volume of the Source falls of with distance.
  ]],
  arguments = {},
  returns = {
    {
      name = 'reference',
      type = 'number',
      description = 'The distance at which the volume will start to decrease.'
    },
    {
      name = 'max',
      type = 'number',
      description = 'The distance at which the Source will be its quietest.'
    },
    {
      name = 'rolloff',
      type = 'number',
      description = [[
        How quickly the sound falls off between the reference and max distances (1.0 is the
        default).
      ]]
    }
  },
  related = {
    'Source:getVolumeLimits',
    'Source:setVolumeLimits'
  }
}
