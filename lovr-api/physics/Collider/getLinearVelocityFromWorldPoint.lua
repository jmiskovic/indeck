return {
  summary = 'Get the linear velocity of the Collider at a world space point.',
  description = [[
    Returns the linear velocity of a point on the Collider specified in world space.
  ]],
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate in world space.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate in world space.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate in world space.'
    }
  },
  returns = {
    vx = {
      type = 'number',
      description = 'The x component of the velocity of the point.'
    },
    vy = {
      type = 'number',
      description = 'The y component of the velocity of the point.'
    },
    vz = {
      type = 'number',
      description = 'The z component of the velocity of the point.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'vx', 'vy', 'vz' }
    }
  },
  related = {
    'Collider:getLinearVelocity',
    'Collider:getLinearVelocityFromLocalPoint'
  }
}
