return {
  summary = 'Set the Shape\'s orientation.',
  description = 'Set the orientation of the Shape relative to its Collider.',
  arguments = {
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
  returns = {},
  variants = {
    {
      arguments = { 'angle', 'ax', 'ay', 'az' },
      returns = {}
    }
  },
  notes = 'If the Shape isn\'t attached to a Collider, this will error.',
  related = {
    'Shape:getPosition',
    'Shape:setPosition'
  }
}
