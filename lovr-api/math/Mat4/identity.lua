return {
  summary = 'Reset the matrix to the identity.',
  description = [[
    Resets the matrix to the identity, effectively setting its translation to zero, its scale to 1,
    and clearing any rotation.
  ]],
  arguments = {},
  returns = {
    self = {
      type = 'Mat4',
      description = 'The modified matrix.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'self' }
    }
  },
  related = {
    'Pass:origin'
  }
}
