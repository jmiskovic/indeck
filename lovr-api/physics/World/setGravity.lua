return {
  tag = 'worldProperties',
  summary = 'Set the gravity of the World.',
  description = 'Sets the gravity of the World.',
  arguments = {
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
    },
    gravity = {
      type = 'Vec3',
      description = 'The gravity force.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'xg', 'yg', 'zg' },
      returns = {}
    },
    {
      arguments = { 'gravity' },
      returns = {}
    }
  }
}
