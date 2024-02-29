return {
  tag = 'pass-misc',
  summary = 'Get statistics for the Pass.',
  description = 'Returns statistics for the Pass.',
  arguments = {},
  returns = {
    stats = {
      type = 'table',
      description = 'A table with statistics.',
      table = {
        {
          name = 'draws',
          type = 'number',
          description = 'The number of draws added to the Pass.'
        },
        {
          name = 'computes',
          type = 'number',
          description = 'The number of compute calls added to the Pass.'
        },
        {
          name = 'drawsCulled',
          type = 'number',
          description = [[
            The number of draw calls that were culled the last time the Pass was submitted.
          ]]
        },
        {
          name = 'cpuMemoryReserved',
          type = 'number',
          description = 'The amount of CPU memory the Pass has reserved, in bytes.'
        },
        {
          name = 'cpuMemoryUsed',
          type = 'number',
          description = 'The amount of CPU memory the Pass is currently using, in bytes.'
        },
        {
          name = 'submitTime',
          type = 'number',
          description = [[
            The amount of time taken on the CPU to submit the Pass the last time it was submitted,
            in seconds.  Only updates when timing stats have been enabled with
            `lovr.graphics.setTimingEnabled`, and has a few frames of delay.
          ]]
        },
        {
          name = 'gpuTime',
          type = 'number',
          description = [[
            The amount of time taken on the GPU to process the Pass, in seconds.  Only updates when
            timing stats have been enabled with `lovr.graphics.setTimingEnabled`, and has a few
            frames of delay.
          ]]
        }
      }
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'stats' }
    }
  },
  example = {
    description = 'See how long it takes the GPU to render a cube.',
    code = [[
      lovr.graphics.setTimingEnabled(true)

      function lovr.draw(pass)
        pass:cube(0, 1.7, -1, .5, lovr.timer.getTime() * .2, 0, 1, 0)

        local stats = pass:getStats()
        print(('Rendering a cube takes %f microseconds'):format(stats.gpuTime * 1e6))
      end
    ]]
  },
  related = {
    'lovr.graphics.isTimingEnabled',
    'lovr.graphics.setTimingEnabled',
    'Pass:setViewCull'
  }
}
