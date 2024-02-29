return {
  summary = 'Multiply a quaternion by another quaternion or a vector.',
  description = [[
    Multiplies this quaternion by another value.  If the value is a quaternion, the rotations in the
    two quaternions are applied sequentially and the result is stored in the first quaternion.  If
    the value is a vector, then the input vector is rotated by the quaternion and returned.
  ]],
  arguments = {
    r = {
      type = 'Quat',
      description = 'A quaternion to combine with the original.'
    },
    v3 = {
      type = 'Vec3',
      description = 'A vector to rotate.'
    }
  },
  returns = {
    self = {
      type = 'Quat',
      description = 'The modified quaternion.'
    },
    v3 = {
      type = 'Vec3',
      description = 'The rotated vector.'
    }
  },
  variants = {
    {
      arguments = { 'r' },
      returns = { 'self' }
    },
    {
      arguments = { 'v3' },
      returns = { 'v3' }
    }
  }
}
