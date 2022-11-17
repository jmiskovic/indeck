return {
  summary = 'Get the joint tightness.',
  description = [[
    Returns the tightness of the joint.  See `World:setTightness` for how this affects the joint.
  ]],
  arguments = {},
  returns = {
    tightness = {
      type = 'number',
      description = 'The tightness of the joint.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'tightness' }
    }
  },
  related = {
    'BallJoint:getTightness',
    'BallJoint:setTightness',
    'World:getTightness',
    'World:setTightness'
  }
}
