return {
  tag = 'graphics-global',
  summary = 'Check if timing stats are enabled.',
  description = [[
    Returns whether timing stats are enabled.  When enabled, `Pass:getStats` will return
    `submitTime` and `gpuTime` durations.  Timing is enabled by default when `t.graphics.debug` is
    set in `lovr.conf`.  Timing has a small amount of overhead, so it should only be enabled when
    needed.
  ]],
  arguments = {},
  returns = {
    enabled = {
      type = 'boolean',
      description = 'Whether timing is enabled.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'enabled' }
    }
  },
  related = {
    'Pass:getStats'
  }
}
