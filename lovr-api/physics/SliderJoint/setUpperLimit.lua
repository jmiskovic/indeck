return {
  summary = 'Set the SliderJoint\'s upper limit.',
  description = 'Sets the upper limit of the slider position.',
  arguments = {
    limit = {
      type = 'number',
      description = 'The upper limit.'
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
    'SliderJoint:getLowerLimit',
    'SliderJoint:setLowerLimit',
    'SliderJoint:getLimits',
    'SliderJoint:setLimits'
  }
}
