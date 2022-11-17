return {
  summary = 'Get the linear velocity of the Collider.',
  description = [[
    Returns the linear velocity of the Collider.  This is how fast the Collider is moving.  There is
    also angular velocity, which is how fast the Collider is spinning.
  ]],
  arguments = {},
  returns = {
    vx = {
      type = 'number',
      description = 'The x velocity of the Collider, in meters per second.'
    },
    vy = {
      type = 'number',
      description = 'The y velocity of the Collider, in meters per second.'
    },
    vz = {
      type = 'number',
      description = 'The z velocity of the Collider, in meters per second.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'vx', 'vy', 'vz' }
    }
  },
  related = {
    'Collider:getLinearVelocityFromLocalPoint',
    'Collider:getLinearVelocityFromWorldPoint',
    'Collider:getAngularVelocity',
    'Collider:setAngularVelocity',
    'Collider:applyForce',
    'Collider:getPosition',
    'Collider:setPosition'
  }
}
