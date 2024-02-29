return {
  tag = 'system-info',
  summary = 'Get the current operating system.',
  description = 'Returns the current operating system.',
  arguments = {},
  returns = {
    os = {
      type = 'string',
      description = 'Either "Windows", "macOS", "Linux", "Android" or "Web".'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'os' }
    }
  }
}
