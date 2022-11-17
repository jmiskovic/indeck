return {
  summary = 'Set the SliderJoint\'s lower limit.',
  description = 'Sets the lower limit of the slider position.',
  arguments = {
    limit = {
      type = 'number',
      description = 'The lower limit.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'limit' },
      returns = {}
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
