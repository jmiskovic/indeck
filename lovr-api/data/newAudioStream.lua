return {
  summary = 'Create a new AudioStream.',
  description = [[
    Creates a new AudioStream. AudioStream has two modes:

    - Constructed with a filename or blob, AudioStream will decode the given file on demand. Right
      now, the only supported audio format is Ogg Vorbis (.ogg).
    - Constructed without, it's a "raw" audiostream that you append data to in real-time. See
      `AudioStream:append` for usage.
  ]],
  arguments = {
    filename = {
      type = 'string',
      description = 'The filename of the audio file to load.'
    },
    blob = {
      type = 'Blob',
      description = 'The Blob containing audio data to decode.'
    },
    sampleRate = {
      type = 'number',
      description = [[
        The resolution of the stream, in samples per second (examples of common values: 44100,
        48000, 16000).
      ]]
    },
    bufferSize = {
      type = 'number',
      default = '4096',
      description = 'The size of the stream\'s audio buffer, in samples.'
    },
    queueLimit = {
      type = 'number',
      default = 'sampleRate * 0.5',
      description = [[
        The maximum number of audio samples that this AudioStream will queue. The default is half a
        second worth of data. Set to 0 for no limit (but be careful not to use too much RAM).
      ]]
    },
    channelCount = {
      type = 'number',
      description = 'Number of audio channels (1 for mono or 2 for stereo).'
    }
  },
  returns = {
    audioStream = {
      type = 'AudioStream',
      description = 'The new AudioStream.'
    }
  },
  variants = {
    {
      description = 'Create an `AudioStream` decoding ogg audio from the file at `filename`.',
      arguments = { 'filename', 'bufferSize' },
      returns = { 'audioStream' }
    },
    {
      description = 'Create an `AudioStream` decoding ogg audio from the given Blob.',
      arguments = { 'blob', 'bufferSize' },
      returns = { 'audioStream' }
    },
    {
      description = [[
        Create a raw `AudioStream`.  You must call `append` to give it audio to stream later.
      ]],
      arguments = { 'channelCount', 'sampleRate', 'bufferSize', 'queueLimit'},
      returns = { 'audioStream' }
    }
  }
}
