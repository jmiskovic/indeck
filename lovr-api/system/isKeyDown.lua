return {
  summary = 'Get the state of a key.',
  description = 'Returns whether a key on the keyboard is pressed.',
  arguments = {
    key = {
      type = 'KeyCode',
      description = 'The key.'
    }
  },
  returns = {
    down = {
      type = 'boolean',
      description = 'Whether the key is currently pressed.'
    }
  },
  variants = {
    {
      arguments = { 'key' },
      returns = { 'down' }
    }
  }
}
