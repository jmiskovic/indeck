return {
  summary = 'Set the joint tightness.',
  description = [[
    Sets the tightness of the joint.  See `World:setTightness` for how this affects the joint.
  ]],
  arguments = {
    tightness = {
      type = 'number',
      description = 'The tightness of the joint.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'tightness' },
      returns = {}
    }
  },
  related = {
    'BallJoint:getTightness',
    'BallJoint:setTightness',
    'World:getTightness',
    'World:setTightness'
  }
}
