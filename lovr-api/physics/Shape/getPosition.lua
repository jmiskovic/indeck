return {
  summary = 'Get the Shape\'s position.',
  description = 'Get the position of the Shape relative to its Collider.',
  arguments = {},
  returns = {
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
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Shape:getOrientation',
    'Shape:setOrientation',
    'Shape:getPose',
    'Shape:setPose'
  }
}
