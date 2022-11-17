return {
  tag = 'worldProperties',
  summary = 'Get the tightness of joints in the World.',
  description = [[
    Returns the tightness of joints in the World.

    The tightness controls how much force is applied to colliders connected by joints.  With a value
    of 0, no force will be applied and joints won't have any effect.  With a tightness of 1, a
    strong force will be used to try to keep the Colliders constrained.  A tightness larger than 1
    will overcorrect the joints, which can sometimes be desirable.  Negative tightness values are
    not supported.
  ]],
  arguments = {},
  returns = {
    tightness = {
      type = 'number',
      description = 'The tightness of the World.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'tightness' }
    }
  },
  related = {
    'DistanceJoint:getTightness',
    'DistanceJoint:setTightness'
  }
}
