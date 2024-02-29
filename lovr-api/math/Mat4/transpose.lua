return {
  summary = 'Transpose the matrix.',
  description = 'Transposes the matrix, mirroring its values along the diagonal.',
  arguments = {},
  returns = {
    self = {
      type = 'Mat4',
      description = 'The transposed matrix.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'self' }
    }
  }
}
