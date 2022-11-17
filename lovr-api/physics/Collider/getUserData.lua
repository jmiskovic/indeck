return {
  summary = 'Get the Collider\'s user data.',
  description = 'Returns the user data associated with the Collider.',
  arguments = {},
  returns = {
    data = {
      type = '*',
      description = 'The custom value associated with the Collider.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'data' }
    }
  },
  notes = 'User data can be useful to identify the Collider in callbacks.'
}
