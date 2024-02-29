return {
  tag = 'filesystem-paths',
  summary = 'Get the location of the save directory.',
  description = 'Returns the absolute path to the save directory.',
  arguments = {},
  returns = {
    path = {
      type = 'string',
      description = 'The absolute path to the save directory.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'path' }
    }
  },
  notes = [[
    The save directory takes the following form:

        <appdata>/LOVR/<identity>

    Where `<appdata>` is `lovr.filesystem.getAppdataDirectory` and `<identity>` is
    `lovr.filesystem.getIdentity` and can be customized using `lovr.conf`.
  ]],
  related = {
    'lovr.filesystem.getIdentity',
    'lovr.filesystem.getAppdataDirectory'
  }
}
