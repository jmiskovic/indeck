return {
  summary = 'Decode the next chunk of audio in the AudioStream.',
  description = 'Returns a new SoundData containing the next chunk of audio in the AudioStream.',
  arguments = {},
  returns = {
    {
      name = 'soundData',
      type = 'SoundData',
      description = 'The SoundData object containing raw audio samples.'
    }
  },
  notes = 'This function may return nil if there isn\'t any audio left in the stream.'
}
