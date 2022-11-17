return {
  summary = 'Set the Collider\'s user data.',
  description = 'Associates a custom value with the Collider.',
  arguments = {
    data = {
      type = '*',
      description = 'The custom value to associate with the Collider.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'data' },
      returns = {}
    }
  },
  notes = 'User data can be useful to identify the Collider in callbacks.'
}
