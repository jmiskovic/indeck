return {
  summary = 'Request permission to use a feature.',
  description = [[
    Requests permission to use a feature.  Usually this will pop up a dialog box that the user needs
    to confirm.  Once the permission request has been acknowledged, the `lovr.permission` callback
    will be called with the result.  Currently, this is only used for requesting microphone access
    on Android devices.
  ]],
  arguments = {
    permission = {
      type = 'Permission',
      description = 'The permission to request.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'permission' },
      returns = {}
    }
  },
  related = {
    'lovr.permission'
  }
}
