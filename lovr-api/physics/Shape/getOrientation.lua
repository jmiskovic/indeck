return {
  summary = 'Get the Shape\'s orientation.',
  description = 'Get the orientation of the Shape relative to its Collider.',
  arguments = {},
  returns = {
    angle = {
      type = 'number',
      description = 'The number of radians the Shape is rotated.'
    },
    ax = {
      type = 'number',
      description = 'The x component of the rotation axis.'
    },
    ay = {
      type = 'number',
      description = 'The y component of the rotation axis.'
    },
    az = {
      type = 'number',
      description = 'The z component of the rotation axis.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'angle', 'ax', 'ay', 'az' }
    }
  },
  related = {
    'Shape:getPosition',
    'Shape:setPosition'
  }
}
