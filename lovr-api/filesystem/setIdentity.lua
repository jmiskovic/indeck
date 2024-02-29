return {
  tag = 'filesystem-virtual',
  summary = 'Set the name of the save directory.',
  description = [[
    Set the name of the save directory.  This function can only be called once and is called
    automatically at startup, so this function normally isn't called manually.  However, the
    identity can be changed by setting the `t.identity` option in `lovr.conf`.
  ]],
  arguments = {
    identity = {
      type = 'string',
      description = 'The name of the save directory.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'identity' },
      returns = {}
    }
  },
  related = {
    'lovr.conf',
    'lovr.filesystem.getSaveDirectory'
  }
}
