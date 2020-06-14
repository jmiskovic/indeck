return {
  summary = 'Get the application ID.',
  description = [[
    Returns the platform-specific application ID, or `nil` if the current platform doesn't have one.

    Currently only implemented on Android, where it returns the package name, e.g. `org.lovr.app`.
  ]],
  arguments = {},
  returns = {
    {
      name = 'id',
      type = 'string',
      description = 'The application ID.'
    }
  }
}
