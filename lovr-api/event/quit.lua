return {
  summary = 'Quit the application.',
  description = [[
    Pushes an event to quit or restart the application.  An optional number can be passed to set the
    exit code for the application.  An exit code of zero indicates normal termination, whereas a
    nonzero exit code indicates that an error occurred.  Alternatively, the string 'restart' can be
    used to cause LÖVR to reload the project.
  ]],
  arguments = {
    code = {
      type = 'number',
      default = '0',
      description = 'The exit code of the program.'
    },
    ["'restart'"] = {
      type = 'string',
      description = 'Restart instead of quitting.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'code' },
      returns = {}
    },
    {
      arguments = { [['restart']] },
      returns = {}
    }
  },
  notes = [[
    This function is equivalent to calling `lovr.event.push('quit', <args>)`.

    The program won't actually exit until the next time `lovr.event.poll` is called.

    The `lovr.quit` callback will be called when the event is processed, which can be used to do any
    cleanup work.  The callback can also return `false` to stop the quitting process.
  ]],
  related = {
    'lovr.quit',
    'lovr.event.poll'
  }
}
