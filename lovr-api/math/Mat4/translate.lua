return {
  summary = 'Translate the matrix.',
  description = 'Translates the matrix.',
  arguments = {
    v = {
      type = 'Vec3',
      description = 'The translation vector.'
    },
    x = {
      type = 'number',
      description = 'The x component of the translation.'
    },
    y = {
      type = 'number',
      description = 'The y component of the translation.'
    },
    z = {
      type = 'number',
      description = 'The z component of the translation.'
    }
  },
  returns = {
    self = {
      type = 'Mat4',
      description = 'The translated matrix.'
    }
  },
  variants = {
    {
      arguments = { 'v' },
      returns = { 'self' }
    },
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'self' }
    }
  },
  related = {
    'Mat4:rotate',
    'Mat4:scale',
    'Mat4:identity'
  }
}
