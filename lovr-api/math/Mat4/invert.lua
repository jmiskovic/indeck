return {
  summary = 'Invert the matrix.',
  description = 'Inverts the matrix, causing it to represent the opposite of its old transform.',
  arguments = {},
  returns = {
    self = {
      type = 'Mat4',
      description = 'The inverted matrix.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'self' }
    }
  }
}
