return {
  summary = 'Check if a vector equals another vector.',
  description = 'Returns whether a vector is approximately equal to another vector.',
  arguments = {
    u = {
      type = 'Vec4',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'The x component of the other vector.'
    },
    y = {
      type = 'number',
      description = 'The y component of the other vector.'
    },
    z = {
      type = 'number',
      description = 'The z component of the other vector.'
    },
    w = {
      type = 'number',
      description = 'The w component of the other vector.'
    }
  },
  returns = {
    equal = {
      type = 'boolean',
      description = 'Whether the 2 vectors approximately equal each other.'
    },
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'equal' }
    },
    {
      arguments = { 'x', 'y', 'z', 'w' },
      returns = { 'equal' }
    }
  },
  notes = [[
    To handle floating point precision issues, this function returns true as long as the squared
    distance between the vectors is below `1e-10`.
  ]],
  related = {
    'Vec2:equals',
    'Vec3:equals',
    'Quat:equals',
    'Mat4:equals'
  }
}
