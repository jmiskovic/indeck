return {
  tag = 'vectors',
  summary = 'Create a new Vec2.',
  description = 'Creates a new 2D vector.  This function takes the same arguments as `Vec2:set`.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x value of the vector.'
    },
    y = {
      type = 'number',
      default = 'x',
      description = 'The y value of the vector.'
    },
    u = {
      type = 'Vec2',
      description = 'A vector to copy the values from.'
    }
  },
  returns = {
    v = {
      type = 'Vec2',
      description = 'The new vector.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y' },
      returns = { 'v' }
    },
    {
      arguments = { 'u' },
      returns = { 'v' }
    }
  },
  related = {
    'lovr.math.vec2',
    'Vec2',
    'Vectors'
  }
}
