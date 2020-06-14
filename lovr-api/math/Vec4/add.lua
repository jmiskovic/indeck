return {
  summary = 'Add a vector or a number to the vector.',
  description = 'Adds a vector or a number to the vector.',
  arguments = {
    u = {
      type = 'Vec4',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'A number to add to each component.'
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
    'Vec4:sub',
    'Vec4:mul',
    'Vec4:div'
  }
}
