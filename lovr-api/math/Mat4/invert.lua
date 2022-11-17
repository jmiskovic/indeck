return {
  summary = 'Invert the matrix.',
  description = 'Inverts the matrix, causing it to represent the opposite of its old transform.',
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
  }
}
