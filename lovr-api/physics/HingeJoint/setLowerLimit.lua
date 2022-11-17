return {
  summary = 'Set the HingeJoint\'s lower angle limit.',
  description = 'Sets the lower limit of the hinge angle.  This should be greater than -π.',
  arguments = {
    limit = {
      type = 'number',
      description = 'The lower limit, in radians.'
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
    'HingeJoint:getAngle',
    'HingeJoint:getUpperLimit',
    'HingeJoint:setUpperLimit',
    'HingeJoint:getLimits',
    'HingeJoint:setLimits'
  }
}
