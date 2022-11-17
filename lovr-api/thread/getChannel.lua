return {
  summary = 'Get a Channel for communicating between threads.',
  description = 'Returns a named Channel for communicating between threads.',
  arguments = {
    name = {
      type = 'string',
      description = 'The name of the Channel to get.'
    }
  },
  returns = {
    channel = {
      type = 'Channel',
      description = 'The Channel with the specified name.'
    }
  },
  variants = {
    {
      arguments = { 'name' },
      returns = { 'channel' }
    }
  },
  related = {
    'Channel'
  }
}
