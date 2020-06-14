return {
  summary = 'Get the number of channels in the SoundData.',
  description = [[
    Returns the number of channels in the SoundData.  Mono sounds have 1 channel and stereo sounds
    have 2 channels.
  ]],
  arguments = {},
  returns = {
    {
      name = 'channels',
      type = 'number',
      description = 'The number of channels.'
    }
  },
  notes = [[
    It's important to keep in mind the channel count if you're using `SoundData:getSample` and
    `SoundData:setSample`.  The SoundData stores its samples in an "interleaved" manner, meaning
    the samples from different channels are stored next to each other.

    If you want to get the 3rd sample of the second channel of a stereo sound, you would use sample
    number 5, since samples start at zero and `(sample * channelCount) + channelIndex = 5`.
  ]],
  related = {
    'AudioStream:getChannelCount',
    'Source:getChannelCount'
  }
}
