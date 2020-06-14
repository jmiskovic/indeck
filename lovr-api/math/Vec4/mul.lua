return {
  summary = 'Multiply the vector by a vector or a number.',
  description = 'Multiplies the vector by a vector or a number.',
  arguments = {
    u = {
      type = 'Vec4',
      description = 'The other vector to multiply the components by.'
    },
    x = {
      type = 'number',
      description = 'The number to multiply each component by.'
    }
  },
  returns = {
    v = {
      type = 'Vec4',
      description = 'The original vector.'
    }
  },
  variants = {
    {
      arguments = { 'u' },
      returns = { 'v' }
    },
    {
      arguments = { 'x' },
      returns = { 'v' }
    }
  },
  related = {
    'Vec4:add',
    'Vec4:sub',
    'Vec4:div'
  }
}
