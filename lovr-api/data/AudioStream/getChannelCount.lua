return {
  summary = 'Get the number of channels in the AudioStream.',
  description = [[
    Returns the number of channels present in the stream's sound data.  Mono sounds have 1 channel
    and stereo sounds have 2 channels.
  ]],
  arguments = {},
  returns = {
    {
      name = 'channels',
      type = 'number',
      description = 'The number of channels.'
    }
  },
  related = {
    'SoundData:getChannelCount',
    'Source:getChannelCount'
  }
}
