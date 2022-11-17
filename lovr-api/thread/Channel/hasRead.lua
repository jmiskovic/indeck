return {
  summary = 'Get whether a message has been read.',
  description = [[
    Returns whether or not the message with the given ID has been read.  Every call to
    `Channel:push` returns a message ID.
  ]],
  arguments = {
    id = {
      type = 'number',
      description = 'The ID of the message to check.'
    }
  },
  returns = {
    read = {
      type = 'boolean',
      description = 'Whether the message has been read.'
    }
  },
  variants = {
    {
      arguments = { 'id' },
      returns = { 'read' }
    }
  },
  related = {
    'Channel:push'
  }
}
