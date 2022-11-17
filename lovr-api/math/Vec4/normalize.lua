return {
  summary = 'Normalize the length of the vector to 1.',
  description = [[
    Adjusts the values in the vector so that its direction stays the same but its length becomes 1.
  ]],
  arguments = {},
  returns = {
    v = {
      type = 'Vec4',
      description = 'The original vector.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'v' }
    }
  },
  related = {
    'Vec4:length'
  }
}
