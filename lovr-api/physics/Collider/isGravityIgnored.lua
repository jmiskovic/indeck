return {
  summary = 'Check if the Collider ignores gravity.',
  description = 'Returns whether the Collider is currently ignoring gravity.',
  arguments = {},
  returns = {
    ignored = {
      type = 'boolean',
      description = 'Whether gravity is ignored for this Collider.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'ignored' }
    }
  }
}
