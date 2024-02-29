return {
  tag = 'vectors',
  summary = 'Create a temporary Vec3.',
  description = [[
    Creates a temporary 3D vector.  This function takes the same arguments as `Vec3:set`.
  ]],
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
    z = {
      type = 'number',
      default = 'x',
      description = 'The z value of the vector.'
    },
    u = {
      type = 'Vec3',
      description = 'A vector to copy the values from.'
    },
    m = {
      type = 'Mat4',
      description = 'A matrix to use the position of.'
    },
    q = {
      type = 'Quat',
      description = 'A quat to use the direction of.'
    }
  },
  returns = {
    v = {
      type = 'Vec3',
      description = 'The new vector.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = { 'v' }
    },
    {
      arguments = { 'u' },
      returns = { 'v' }
    },
    {
      arguments = { 'm' },
      returns = { 'v' }
    },
    {
      arguments = { 'q' },
      returns = { 'v' }
    }
  },
  related = {
    'lovr.math.newVec3',
    'Vec3',
    'Vectors'
  }
}
