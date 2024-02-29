return {
  summary = 'Set the Shape\'s position.',
  description = 'Set the position of the Shape relative to its Collider.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x offset.'
    },
    y = {
      type = 'number',
      description = 'The y offset.'
    },
    z = {
      type = 'number',
      description = 'The z offset.'
    },
    position = {
      type = 'Vec3',
      description = 'The position.'
    }
  },
  returns = {},
  variants = {
    {
      description = 'Set the position of the Shape using numbers.',
      arguments = { 'x', 'y', 'z' },
      returns = {}
    },
    {
      description = 'Set the position of the Shape using a vector.',
      arguments = { 'position' },
      returns = {}
    }
  },
  notes = 'If the Shape isn\'t attached to a Collider, this will error.',
  related = {
    'Shape:getOrientation',
    'Shape:setOrientation'
  }
}
