return {
  summary = 'Pop a message from the Channel.',
  description = [[
    Pops a message from the Channel.  If the Channel is empty, an optional timeout argument can be
    used to wait for a message, otherwise `nil` is returned.
  ]],
  arguments = {
    wait = {
      type = 'number',
      default = 'false',
      description = [[
        How long to wait for a message to be popped, in seconds.  `true` can be used to wait forever
        and `false` can be used to avoid waiting.
      ]]
    }
  },
  returns = {
    message = {
      type = '*',
      description = 'The received message, or `nil` if nothing was received.'
    }
  },
  variants = {
    {
      arguments = { 'wait' },
      returns = { 'message' }
    }
  },
  notes = 'Threads can get stuck forever waiting on Channel messages, so be careful.',
  related = {
    'Channel:peek',
    'Channel:push'
  }
}
