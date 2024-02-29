return {
  tag = 'callbacks',
  summary = 'Called when an error occurs.',
  description = [[
    The `lovr.errhand` callback is run whenever an error occurs.  It receives a parameter containing
    the error message.  It should return a handler function that will run in a loop to render the
    error screen.

    This handler function is of the same type as the one returned by `lovr.run` and has the same
    requirements (such as pumping events).  If an error occurs while this handler is running, the
    program will terminate immediately -- `lovr.errhand` will not be given a second chance.  Errors
    which occur in the error handler or in the handler it returns may not be cleanly reported, so be
    careful.

    A default error handler is supplied that renders the error message as text to the headset and
    to the window.
  ]],
  arguments = {
    {
      name = 'message',
      type = 'string',
      description = 'The error message.'
    }
  },
  returns = {
    {
      name = 'handler',
      type = 'function',
      arguments = {},
      returns = {
        {
          name = 'result',
          type = '*'
        }
      },
      description = [[
        The error handler function.  It should return nil to continue running, "restart" to restart
        the app, or a number representing an exit status.
      ]]
    }
  },
  example = {
    description = 'The default error handler.',
    code = [[
      function lovr.errhand(message)
        local function formatTraceback(s)
          return s:gsub('\n[^\n]+$', ''):gsub('\t', ''):gsub('stack traceback:', '\nStack:\n')
        end

        message = 'Error:\n\n' .. tostring(message) .. formatTraceback(debug.traceback('', 4))

        print(message)

        if not lovr.graphics or not lovr.graphics.isInitialized() then
          return function() return 1 end
        end

        if lovr.audio then lovr.audio.stop() end

        if not lovr.headset or lovr.headset.getPassthrough() == 'opaque' then
          lovr.graphics.setBackgroundColor(.11, .10, .14)
        else
          lovr.graphics.setBackgroundColor(0, 0, 0, 0)
        end

        local font = lovr.graphics.getDefaultFont()

        return function()
          lovr.system.pollEvents()

          for name, a in lovr.event.poll() do
            if name == 'quit' then return a or 1
            elseif name == 'restart' then return 'restart', lovr.restart and lovr.restart()
            elseif name == 'keypressed' and a == 'f5' then lovr.event.restart()
            elseif name == 'keypressed' and a == 'escape' then lovr.event.quit() end
          end

          if lovr.headset and lovr.headset.getDriver() ~= 'desktop' then
            lovr.headset.update()
            local pass = lovr.headset.getPass()
            if pass then
              font:setPixelDensity()

              local scale = .35
              local font = lovr.graphics.getDefaultFont()
              local wrap = .7 * font:getPixelDensity()
              local lines = font:getLines(message, wrap)
              local width = math.min(font:getWidth(message), wrap) * scale
              local height = .8 + #lines * font:getHeight() * scale
              local x = -width / 2
              local y = math.min(height / 2, 10)
              local z = -10

              pass:setColor(.95, .95, .95)
              pass:text(message, x, y, z, scale, 0, 0, 0, 0, wrap, 'left', 'top')

              lovr.graphics.submit(pass)
              lovr.headset.submit()
            end
          end

          if lovr.system.isWindowOpen() then
            local pass = lovr.graphics.getWindowPass()
            if pass then
              local w, h = lovr.system.getWindowDimensions()
              pass:setProjection(1, lovr.math.mat4():orthographic(0, w, 0, h, -1, 1))
              font:setPixelDensity(1)

              local scale = .6
              local wrap = w * .8 / scale
              local width = math.min(font:getWidth(message), wrap) * scale
              local x = w / 2 - width / 2

              pass:setColor(.95, .95, .95)
              pass:text(message, x, h / 2, 0, scale, 0, 0, 0, 0, wrap, 'left', 'middle')

              lovr.graphics.submit(pass)
              lovr.graphics.present()
            end
          end

          lovr.math.drain()
        end
      end
    ]]
  },
  related = {
    'lovr.quit'
  }
}
