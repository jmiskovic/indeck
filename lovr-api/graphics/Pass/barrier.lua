return {
  tag = 'compute',
  summary = 'Synchronize compute work.',
  description = [[
    Synchronizes compute work.

    By default, within a single Pass, multiple calls to `Pass:compute` can run on the GPU in any
    order, or all at the same time.  This is great because it lets the GPU process the work as
    efficiently as possible, but sometimes multiple compute dispatches need to be sequenced.

    Calling this function will insert a barrier.  All compute operations on the Pass after the
    barrier will only start once all of the previous compute operations on the Pass are finished.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  notes = [[
    It's only necessary to use a barrier if a compute shader is reading/writing the same bytes of
    memory that a previous compute operation in the same Pass read/wrote.

    Barriers will slow things down because they reduce parallelism by causing the GPU to wait.
    Strategic reordering of non-dependent :compute calls around the barrier can help.

    Calling this function before recording any :computes will do nothing, and calling it after the
    last :compute will do nothing.
  ]],
  example = [[
    pass = lovr.graphics.newPass()
    pass:setShader(computeShader)

    pass:compute(x, y, z)
    pass:compute(x, y, z)
    pass:barrier()
    pass:compute(x, y, z) --> waits for the previous 2 :computes to complete
  ]],
  related = {
    'Pass:compute'
  }
}
