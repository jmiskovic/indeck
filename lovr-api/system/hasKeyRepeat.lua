return {
  tag = 'system-keyboard',
  summary = 'Check if key repeat is enabled.',
  description = 'Returns whether key repeat is enabled.',
  arguments = {},
  returns = {
    enabled = {
      type = 'boolean',
      description = 'Whether key repeat is enabled.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'enabled' }
    }
  },
  notes = 'Key repeat is disabled by default.',
  related = {
    'lovr.keypressed'
  }
}
