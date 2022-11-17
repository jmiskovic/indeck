return {
  summary = 'Get the channel layout of the Sound.',
  description = 'Returns the channel layout of the Sound.',
  arguments = {},
  returns = {
    channels = {
      type = 'ChannelLayout',
      description = 'The channel layout.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'channels' }
    }
  },
  related = {
    'Sound:getChannelCount'
  }
}
