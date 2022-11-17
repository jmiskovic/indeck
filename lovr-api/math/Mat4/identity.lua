return {
  summary = 'Reset the matrix to the identity.',
  description = [[
    Resets the matrix to the identity, effectively setting its translation to zero, its scale to 1,
    and clearing any rotation.
  ]],
  arguments = {},
  returns = {
    m = {
      type = 'Mat4',
      description = 'The original matrix.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'm' }
    }
  },
  related = {
    'Pass:origin'
  }
}
