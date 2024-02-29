return {
  tag = 'joints',
  summary = 'Create a new DistanceJoint.',
  description = 'Creates a new DistanceJoint.',
  arguments = {
    colliderA = {
      type = 'Collider',
      description = 'The first collider to attach the Joint to.'
    },
    colliderB = {
      type = 'Collider',
      description = 'The second collider to attach the Joint to.'
    },
    x1 = {
      type = 'number',
      description = 'The x position of the first anchor point, in world coordinates.'
    },
    y1 = {
      type = 'number',
      description = 'The y position of the first anchor point, in world coordinates.'
    },
    z1 = {
      type = 'number',
      description = 'The z position of the first anchor point, in world coordinates.'
    },
    x2 = {
      type = 'number',
      description = 'The x position of the second anchor point, in world coordinates.'
    },
    y2 = {
      type = 'number',
      description = 'The y position of the second anchor point, in world coordinates.'
    },
    z2 = {
      type = 'number',
      description = 'The z position of the second anchor point, in world coordinates.'
    },
    first = {
      type = 'Vec3',
      description = 'The first anchor point, in world coordinates.'
    },
    second = {
      type = 'Vec3',
      description = 'The second anchor point, in world coordinates.'
    }
  },
  returns = {
    joint = {
      type = 'DistanceJoint',
      description = 'The new DistanceJoint.'
    }
  },
  variants = {
    {
      arguments = { 'colliderA', 'colliderB', 'x1', 'y1', 'z1', 'x2', 'y2', 'z2' },
      returns = { 'joint' }
    },
    {
      arguments = { 'colliderA', 'colliderB', 'first', 'second' },
      returns = { 'joint' }
    }
  },
  notes = [[
    A distance joint tries to keep the two colliders a fixed distance apart.  The distance is
    determined by the initial distance between the anchor points.  The joint allows for rotation on
    the anchor points.
  ]],
  related = {
    'lovr.physics.newBallJoint',
    'lovr.physics.newHingeJoint',
    'lovr.physics.newSliderJoint'
  }
}
