return {
  summary = 'Check if a matrix equals another matrix.',
  description = 'Returns whether a matrix is approximately equal to another matrix.',
  arguments = {
    n = {
      type = 'Mat4',
      description = 'The other matrix.'
    }
  },
  returns = {
    equal = {
      type = 'boolean',
      description = 'Whether the 2 matrices approximately equal each other.'
    }
  },
  variants = {
    {
      arguments = { 'n' },
      returns = { 'equal' }
    }
  },
  related = {
    'Vec2:equals',
    'Vec3:equals',
    'Vec4:equals',
    'Quat:equals'
  }
}
