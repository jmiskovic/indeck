return {
  tag = 'worldProperties',
  summary = 'Get the gravity of the World.',
  description = 'Returns the gravity of the World.',
  arguments = {},
  returns = {
    xg = {
      type = 'number',
      description = 'The x component of the gravity force.'
    },
    yg = {
      type = 'number',
      description = 'The y component of the gravity force.'
    },
    zg = {
      type = 'number',
      description = 'The z component of the gravity force.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'xg', 'yg', 'zg' }
    }
  }
}
