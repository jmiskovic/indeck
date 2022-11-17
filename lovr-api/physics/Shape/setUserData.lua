return {
  summary = 'Set the Shape\'s user data.',
  description = 'Sets the user data associated with the Shape.',
  arguments = {
    data = {
      type = '*',
      description = 'The custom value associated with the Shape.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'data' },
      returns = {}
    }
  },
  notes = 'User data can be useful to identify the Shape in callbacks.'
}
