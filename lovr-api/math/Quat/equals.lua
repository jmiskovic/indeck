return {
  summary = 'Check if a quaternion equals another quaternion.',
  description = 'Returns whether a quaternion is approximately equal to another quaternion.',
  arguments = {
    r = {
      type = 'Quat',
      description = 'The other quaternion.'
    }
  },
  returns = {
    equal = {
      type = 'boolean',
      description = 'Whether the 2 quaternions approximately equal each other.'
    }
  },
  variants = {
    {
      arguments = { 'r' },
      returns = { 'equal' }
    }
  },
  related = {
    'Vec2:equals',
    'Vec3:equals',
    'Vec4:equals',
    'Mat4:equals'
  }
}
