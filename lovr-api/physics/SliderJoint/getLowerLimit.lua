return {
  summary = 'Get the SliderJoint\'s lower limit.',
  description = 'Returns the lower limit of the slider position.',
  arguments = {},
  returns = {
    limit = {
      type = 'number',
      description = 'The lower limit.'
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
    'SliderJoint:getUpperLimit',
    'SliderJoint:setUpperLimit',
    'SliderJoint:getLimits',
    'SliderJoint:setLimits'
  }
}
