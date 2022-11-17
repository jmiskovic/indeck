return {
  summary = 'Check if a vector equals another vector.',
  description = 'Returns whether a vector is approximately equal to another vector.',
  arguments = {
    u = {
      type = 'Vec2',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'The x component of the other vector.'
    },
    y = {
      type = 'number',
      description = 'The y component of the other vector.'
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
      arguments = { 'x', 'y' },
      returns = { 'equal' }
    }
  },
  notes = [[
    To handle floating point precision issues, this function returns true as long as the squared
    distance between the vectors is below `1e-10`.
  ]],
  related = {
    'Vec3:equals',
    'Vec4:equals',
    'Quat:equals',
    'Mat4:equals'
  }
}
