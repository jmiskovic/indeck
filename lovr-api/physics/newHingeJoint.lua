return {
  tag = 'joints',
  summary = 'Create a new HingeJoint.',
  description = 'Creates a new HingeJoint.',
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
      description = 'The x position of the hinge anchor, in world coordinates.'
    },
    y = {
      type = 'number',
      description = 'The y position of the hinge anchor, in world coordinates.'
    },
    z = {
      type = 'number',
      description = 'The z position of the hinge anchor, in world coordinates.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the hinge axis direction.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the hinge axis direction.'
    },
    az = {
      type = 'number',
      description = 'The z component of the hinge axis direction.'
    },
    anchor = {
      type = 'Vec3',
      description = 'The anchor point, in world coordinates.'
    },
    axis = {
      type = 'Vec3',
      description = 'The hinge axis direction.'
    }
  },
  returns = {
    hinge = {
      type = 'HingeJoint',
      description = 'The new HingeJoint.'
    }
  },
  variants = {
    {
      arguments = { 'colliderA', 'colliderB', 'x', 'y', 'z', 'ax', 'ay', 'az' },
      returns = { 'hinge' }
    },
    {
      arguments = { 'colliderA', 'colliderB', 'anchor', 'axis' },
      returns = { 'hinge' }
    }
  },
  notes = [[
    A hinge joint constrains two colliders to allow rotation only around the hinge's axis.
  ]],
  related = {
    'lovr.physics.newBallJoint',
    'lovr.physics.newDistanceJoint',
    'lovr.physics.newSliderJoint'
  }
}
