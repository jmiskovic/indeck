return {
  summary = 'Get how far the SliderJoint is extended.',
  description = [[
    Returns how far the slider joint is extended (zero is the position the slider was created at,
    positive values are further apart).
  ]],
  arguments = {},
  returns = {
    position = {
      type = 'number',
      description = 'The joint position along its axis.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'position' }
    }
  },
  related = {
    'SliderJoint:getAxis',
    'SliderJoint:getLowerLimit',
    'SliderJoint:setLowerLimit',
    'SliderJoint:getUpperLimit',
    'SliderJoint:setUpperLimit'
  }
}
