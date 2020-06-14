return {
  summary = 'Subtract a vector or a number from the vector.',
  description = 'Subtracts a vector or a number from the vector.',
  arguments = {
    u = {
      type = 'Vec3',
      description = 'The other vector.'
    },
    x = {
      type = 'number',
      description = 'A number to subtract from each component.'
    }
  },
  returns = {
    v = {
      type = 'Vec3',
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
    'Vec3:add',
    'Vec3:mul',
    'Vec3:div'
  }
}
