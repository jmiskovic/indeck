return {
  summary = 'Set the SliderJoint\'s limits.',
  description = 'Sets the upper and lower limits of the slider position.',
  arguments = {
    lower = {
      type = 'number',
      description = 'The lower limit.'
    },
    upper = {
      type = 'number',
      description = 'The upper limit.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'lower', 'upper' },
      returns = {}
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
