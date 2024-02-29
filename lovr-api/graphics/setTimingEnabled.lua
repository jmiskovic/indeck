return {
  tag = 'graphics-global',
  summary = 'Enable or disable timing stats.',
  description = [[
    Enables or disables timing stats.  When enabled, `Pass:getStats` will return `submitTime` and
    `gpuTime` durations.  Timing is enabled by default when `t.graphics.debug` is set in
    `lovr.conf`.  Timing has a small amount of overhead, so it should only be enabled when needed.
  ]],
  arguments = {
    enable = {
      type = 'boolean',
      description = 'Whether timing should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'enable' },
      returns = {}
    }
  },
  related = {
    'Pass:getStats'
  }
}
