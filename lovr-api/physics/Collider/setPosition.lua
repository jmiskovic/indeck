return {
  summary = 'Set the position of the Collider.',
  description = 'Sets the position of the Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x position of the Collider, in meters.'
    },
    y = {
      type = 'number',
      description = 'The y position of the Collider, in meters.'
    },
    z = {
      type = 'number',
      description = 'The z position of the Collider, in meters.'
    },
    position = {
      type = 'Vec3',
      description = 'The position of the Collider, in meters.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the position of the Collider using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Set the position of the Collider using a vector.',
      arguments = { 'position' },
      returns = {}
    }
  },
  related = {
    'Collider:applyForce',
    'Collider:getLinearVelocity',
    'Collider:setLinearVelocity',
    'Collider:getOrientation',
    'Collider:setOrientation',
    'Collider:getPose',
    'Collider:setPose'
  }
}
