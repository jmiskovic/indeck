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
    },
    velocity = {
      type = 'Vec3',
      description = 'The angular velocity of the Collider.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Sets the angular velocity of the Collider using numbers.',
      arguments = { 'vx', 'vy', 'vz' },
      returns = {}
    },
    {
      description = 'Sets the angular velocity of the Collider using a vector.',
      arguments = { 'velocity' },
      returns = {}
    }
  },
  notes = 'If the Collider is asleep, calling this function will wake it up.',
  related = {
    'Collider:getLinearVelocity',
    'Collider:setLinearVelocity',
    'Collider:applyTorque',
    'Collider:getOrientation',
    'Collider:setOrientation'
  }
}
