return {
  summary = 'Get the components of the vector.',
  description = 'Returns the 3 components of the vector as numbers.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x value.'
    },
    y = {
      type = 'number',
      description = 'The y value.'
    },
    z = {
      type = 'number',
      description = 'The z value.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  related = {
    'Vec3:set'
  }
}
