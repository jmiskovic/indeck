return {
  tag = 'callbacks',
  summary = 'Called before quitting.',
  description = [[
    This callback is called right before the game is about to quit.  Use it to perform any cleanup
    you need to do.  You can also return a "truthy" value from this callback to abort quitting.
  ]],
  arguments = {},
  returns = {
    {
      type = 'boolean',
      name = 'abort',
      description = 'Whether quitting should be aborted.'
    }
  },
  example = [[
    function lovr.quit()
      if shouldQuit() then
        return false
      else
        return true
      end
    end
  ]],
  related = {
    'lovr.event.quit',
    'lovr.load'
  }
}
