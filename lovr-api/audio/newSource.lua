return {
  tag = 'sources',
  summary = 'Create a new Source.',
  description = 'Creates a new Source from an ogg file.',
  arguments = {
    filename = {
      type = 'string',
      description = 'The filename of the sound to load.'
    },
    blob = {
      type = 'Blob',
      description = 'The Blob containing the Source data.'
    },
    stream = {
      type = 'AudioStream',
      description = 'The AudioStream used to stream audio data to the Source.'
    },
    soundData = {
      type = 'SoundData',
      description = 'The SoundData containing raw audio samples to play.'
    },
    type = {
      type = 'SourceType',
      description = 'How to stream in audio data.'
    }
  },
  returns = {
    source = {
      type = 'Source',
      description = 'The new Source.'
    }
  },
  variants = {
    {
      arguments = { 'filename', 'type' },
      returns = { 'source' }
    },
    {
      arguments = { 'blob', 'type' },
      returns = { 'source' }
    },
    {
      arguments = { 'stream', 'type' },
      returns = { 'source' }
    },
    {
      arguments = { 'soundData' },
      returns = { 'source' }
    }
  }
}
