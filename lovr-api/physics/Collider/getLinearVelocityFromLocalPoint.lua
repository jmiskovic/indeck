return {
  summary = 'Get the linear velocity of the Collider at a point.',
  description = 'Returns the linear velocity of a point relative to the Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate.'
    },
    point = {
      type = 'number',
      description = 'The point.'
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
    },
    {
      arguments = { 'point' },
      returns = { 'vx', 'vy', 'vz' }
    }
  },
  related = {
    'Collider:getLinearVelocity',
    'Collider:getLinearVelocityFromWorldPoint'
  }
}
