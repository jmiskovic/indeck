return {
  summary = 'Get the Joint\'s user data.',
  description = 'Returns the user data associated with the Joint.',
  arguments = {},
  returns = {
    data = {
      type = '*',
      description = 'The custom value associated with the Joint.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  }
}
