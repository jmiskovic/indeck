return {
  summary = 'Get the angular velocity of the Collider.',
  description = 'Returns the angular velocity of the Collider.',
  arguments = {},
  returns = {
    vx = {
      type = 'number',
      description = 'The x component of the angular velocity.'
    },
    vy = {
      type = 'number',
      description = 'The y component of the angular velocity.'
    },
    vz = {
      type = 'number',
      description = 'The z component of the angular velocity.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'vx', 'vy', 'vz' }
    }
  },
  related = {
    'Collider:getLinearVelocity',
    'Collider:setLinearVelocity',
    'Collider:applyTorque',
    'Collider:getOrientation',
    'Collider:setOrientation'
  }
}
