return {
  summary = 'Blend modes.',
  description = 'Different ways pixels can blend with the pixels behind them.',
  values = {
    {
      name = 'alpha',
      description = 'Colors will be mixed based on alpha.'
    },
    {
      name = 'add',
      description = 'Colors will be added to the existing color, alpha will not be changed.'
    },
    {
      name = 'subtract',
      description = 'Colors will be subtracted from the existing color, alpha will not be changed.'
    },
    {
      name = 'multiply',
      description = 'All color channels will be multiplied together, producing a darkening effect.'
    },
    {
      name = 'lighten',
      description = 'The maximum value of each color channel will be used.'
    },
    {
      name = 'darken',
      description = 'The minimum value of each color channel will be used.'
    },
    {
      name = 'screen',
      description = [[
        The opposite of multiply: the pixel colors are inverted, multiplied, and inverted again,
        producing a lightening effect.
      ]]
    }
  },
  related = {
    'BlendAlphaMode',
    'Pass:setBlendMode'
  }
}
