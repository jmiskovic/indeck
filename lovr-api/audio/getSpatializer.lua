return {
  tag = 'listener',
  summary = 'Get the name of the active spatializer',
  description = [[
    Returns the name of the active spatializer (`simple`, `oculus`, or `phonon`).

    The `t.audio.spatializer` setting in `lovr.conf` can be used to express a preference for a
    particular spatializer.  If it's `nil`, all spatializers will be tried in the following order:
    `phonon`, `oculus`, `simple`.
  ]],
  arguments = {},
  returns = {
    {
      name = 'spatializer',
      type = 'string',
      description = 'The name of the active spatializer.'
    }
  },
  related = {
    'lovr.conf'
  }
}
