return {
  tag = 'pipeline',
  summary = 'Enable or disable wireframe rendering.',
  description = [[
    Enables or disables wireframe rendering.  This will draw all triangles as lines while active.
    It's intended to be used for debugging, since it usually has a performance cost.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether wireframe rendering should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  notes = [[
    Wireframe rendering is disabled by default.

    There is currently no way to change the thickness of the lines.
  ]],
  related = {
    'Pass:setMeshMode'
  }
}
