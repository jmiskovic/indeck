return {
  tag = 'joints',
  summary = 'Create a new BallJoint.',
  description = 'Creates a new BallJoint.',
  arguments = {
    colliderA = {
      type = 'Collider',
      description = 'The first collider to attach the Joint to.'
    },
    colliderB = {
      type = 'Collider',
      description = 'The second collider to attach the Joint to.'
    },
    x = {
      type = 'number',
      description = 'The x position of the joint anchor point, in world coordinates.'
    },
    y = {
      type = 'number',
      description = 'The y position of the joint anchor point, in world coordinates.'
    },
    z = {
      type = 'number',
      description = 'The z position of the joint anchor point, in world coordinates.'
    },
    anchor = {
      type = 'Vec3',
      description = 'The joint anchor point, in world coordinates.'
    }
  },
  returns = {
    ball = {
      type = 'BallJoint',
      description = 'The new BallJoint.'
    }
  },
  variants = {
    {
      arguments = { 'colliderA', 'colliderB', 'x', 'y', 'z' },
      returns = { 'ball' }
    },
    {
      arguments = { 'colliderA', 'colliderB', 'anchor' },
      returns = { 'ball' }
    }
  },
  notes = [[
    A ball joint is like a ball and socket between the two colliders.  It tries to keep the distance
    between the colliders and the anchor position the same, but does not constrain the angle between
    them.
  ]],
  related = {
    'lovr.physics.newDistanceJoint',
    'lovr.physics.newHingeJoint',
    'lovr.physics.newSliderJoint'
  }
}
