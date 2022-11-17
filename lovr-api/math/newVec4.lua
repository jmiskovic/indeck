return {
  tag = 'vectors',
  summary = 'Create a new Vec4.',
  description = 'Creates a new 4D vector.  This function takes the same arguments as `Vec4:set`.',
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
    w = {
      type = 'number',
      default = 'x',
      description = 'The w value of the vector.'
    },
    u = {
      type = 'Vec4',
      description = 'A vector to copy the values from.'
    }
  },
  returns = {
    v = {
      type = 'Vec4',
      description = 'The new vector.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'w' },
      returns = { 'v' }
    },
    {
      arguments = { 'u' },
      returns = { 'v' }
    }
  },
  related = {
    'lovr.math.vec4',
    'Vec4',
    'Vectors'
  }
}
