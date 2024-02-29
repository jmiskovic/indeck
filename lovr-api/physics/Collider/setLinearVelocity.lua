return {
  summary = 'Set the linear velocity of the Collider.',
  description = [[
    Sets the linear velocity of the Collider directly.  Usually it's preferred to use
    `Collider:applyForce` to change velocity since instantaneous velocity changes can lead to weird
    glitches.
  ]],
  arguments = {
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
    },
    velocity = {
      type = 'Vec3',
      description = 'The velocity of the Collider, in meters per second.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the linear velocity of the collider using numbers.',
      arguments = { 'vx', 'vy', 'vz' },
      returns = {}
    },
    {
      description = 'Set the linear velocity of the collider using a vector.',
      arguments = { 'velocity' },
      returns = {}
    }
  },
  notes = 'If the Collider is asleep, calling this function will wake it up.',
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
