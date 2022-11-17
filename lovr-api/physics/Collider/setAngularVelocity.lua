return {
  summary = 'Set the angular velocity of the Collider.',
  description = 'Sets the angular velocity of the Collider.',
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'vx', 'vy', 'vz' },
      returns = {}
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
