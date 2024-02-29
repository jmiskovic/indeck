return {
  tag = 'system-window',
  summary = 'Poll the OS for new window events.',
  description = [[
    Fills the event queue with unprocessed events from the operating system.  This function should
    be called often, otherwise the operating system will consider the application unresponsive.
    This function is called in the default implementation of `lovr.run`.
  ]],
  arguments = {},
  returns = {},
  variants = {
    {
      arguments = {},
      returns = {}
    }
  },
  related = {
    'lovr.event.poll'
  }
}
