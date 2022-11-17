return {
  tag = 'callbacks',
  summary = 'The main entry point.',
  description = [[
    This callback is the main entry point for a LÖVR program.  It calls `lovr.load` and returns a
    function that will be called every frame.
  ]],
  arguments = {},
  returns = {
    {
      name = 'loop',
      type = 'function',
      arguments = {},
      returns = {
        {
          name = 'result',
          type = '*'
        }
      },
      description = 'The main loop function.'
    }
  },
  notes = [[
    The main loop function can return one of the following values:

    - Returning `nil` will keep the main loop running.
    - Returning the string 'restart' plus an optional value will restart LÖVR.  The value can be
      accessed in the `restart` key of the `arg` global.
    - Returning a number will exit LÖVR using the number as the exit code (0 means success).

    Care should be taken when overriding this callback.  For example, if the main loop does not call
    `lovr.event.pump` then the OS will think LÖVR is unresponsive, and if the quit event is not
    handled then closing the window won't work.
  ]],
  example = {
    description = 'The default `lovr.run`:',
    code = [[
      function lovr.run()
        if lovr.timer then lovr.timer.step() end
        if lovr.load then lovr.load(arg) end
        return function()
          if lovr.event then
            lovr.event.pump()
            for name, a, b, c, d in lovr.event.poll() do
              if name == 'restart' then
                local cookie = lovr.restart and lovr.restart()
                return 'restart', cookie
              elseif name == 'quit' and (not lovr.quit or not lovr.quit(a)) then
                return a or 0
              end
              if lovr.handlers[name] then lovr.handlers[name](a, b, c, d) end
            end
          end
          local dt = 0
          if lovr.timer then dt = lovr.timer.step() end
          if lovr.headset then dt = lovr.headset.update() end
          if lovr.update then lovr.update(dt) end
          if lovr.graphics then
            if lovr.headset then
              local pass = lovr.headset.getPass()
              if pass then
                local skip = lovr.draw and lovr.draw(pass)
                if not skip then lovr.graphics.submit(pass) end
              end
            end
            if lovr.system.isWindowOpen() then
              if lovr.mirror then
                local pass = lovr.graphics.getWindowPass()
                local skip = lovr.mirror(pass)
                if not skip then lovr.graphics.submit(pass) end
              end
              lovr.graphics.present()
            end
          end
          if lovr.headset then lovr.headset.submit() end
          if lovr.math then lovr.math.drain() end
        end
      end
    ]],
  },
  related = {
    'lovr.load',
    'lovr.quit'
  }
}
