return {
  summary = 'Enable or disable the Shape.',
  description = 'Enable or disable the Shape.',
  arguments = {
    enabled = {
      type = 'boolean',
      description = 'Whether the Shape should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enabled' },
      returns = {}
    }
  },
  notes = 'Disabled shapes won\'t collide with anything.'
}
