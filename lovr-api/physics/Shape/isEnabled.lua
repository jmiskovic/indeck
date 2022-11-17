return {
  summary = 'Check if the Shape is enabled.',
  description = 'Returns whether the Shape is enabled.',
  arguments = {},
  returns = {
    enabled = {
      type = 'boolean',
      description = 'Whether the Shape is enabled.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'enabled' }
    }
  },
  notes = 'Disabled shapes won\'t collide with anything.'
}
