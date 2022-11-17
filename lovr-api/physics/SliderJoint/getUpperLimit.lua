return {
  summary = 'Get the SliderJoint\'s upper limit.',
  description = 'Returns the upper limit of the slider position.',
  arguments = {},
  returns = {
    limit = {
      type = 'number',
      description = 'The upper limit.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'limit' }
    }
  },
  related = {
    'SliderJoint:getPosition',
    'SliderJoint:getLowerLimit',
    'SliderJoint:setLowerLimit',
    'SliderJoint:getLimits',
    'SliderJoint:setLimits'
  }
}
