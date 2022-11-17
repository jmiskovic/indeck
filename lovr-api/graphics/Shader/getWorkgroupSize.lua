return {
  summary = 'Get the workgroup size of a compute shader.',
  description = [[
    Returns the workgroup size of a compute shader.  The workgroup size defines how many times a
    compute shader is invoked for each workgroup dispatched by `Pass:compute`.
  ]],
  arguments = {},
  returns = {
    x = {
      type = 'number',
      description = 'The x size of a workgroup.'
    },
    y = {
      type = 'number',
      description = 'The y size of a workgroup.'
    },
    z = {
      type = 'number',
      description = 'The z size of a workgroup.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'x', 'y', 'z' }
    }
  },
  notes = [[
    For example, if the workgroup size is `8x8x1` and `16x16x16` workgroups are dispatched, then the
    compute shader will run `16 * 16 * 16 * (8 * 8 * 1) = 262144` times.
  ]]
}
