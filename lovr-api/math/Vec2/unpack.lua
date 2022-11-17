return {
  summary = 'Get the components of the vector.',
  description = 'Returns the 2 components of the vector as numbers.',
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x value.'
    },
    y = {
      type = 'number',
      description = 'The y value.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y' }
    }
  },
  related = {
    'Vec2:set'
  }
}
