return {
  summary = 'Get the SliderJoint\'s limits.',
  description = 'Returns the upper and lower limits of the slider position.',
  arguments = {},
  returns = {
    lower = {
      type = 'number',
      description = 'The lower limit.'
    },
    upper = {
      type = 'number',
      description = 'The upper limit.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'lower', 'upper' }
    }
  },
  related = {
    'SliderJoint:getPosition',
    'SliderJoint:getLowerLimit',
    'SliderJoint:setLowerLimit',
    'SliderJoint:getUpperLimit',
    'SliderJoint:setUpperLimit'
  }
}
