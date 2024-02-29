return {
  summary = 'Normalize the length of the vector to 1.',
  description = [[
    Adjusts the values in the vector so that its direction stays the same but its length becomes 1.
  ]],
  arguments = {},
  returns = {
    self = {
      type = 'Vec3',
      description = 'The normalized vector.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'self' }
    }
  },
  related = {
    'Vec3:length'
  }
}
