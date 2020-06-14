return {
  summary = 'Create a new SoundData.',
  description = [[
    Creates a new SoundData.  You can pass a filename or Blob to decode, an existing AudioStream to
    decode audio samples from, or you can create an empty SoundData that can hold a certain number
    of samples.
  ]],
  arguments = {
    samples = {
      type = 'number',
      description = 'The total number of samples for each channel.'
    },
    sampleRate = {
      type = 'number',
      default = '44100',
      description = 'The number of samples per second.'
    },
    bitDepth = {
      type = 'number',
      default = '16',
      description = 'The number of bits stored for each sample.'
    },
    channels = {
      type = 'number',
      default = '2',
      description = 'The number of channels in the sound (1 for mono, 2 for stereo).'
    },
    filename = {
      type = 'string',
      description = 'The filename of the sound to decode.'
    },
    blob = {
      type = 'string',
      description = 'The Blob containing compressed sound data to decode.'
    }
  },
  returns = {
    soundData = {
      type = 'SoundData',
      description = 'The new SoundData.'
    }
  },
  variants = {
    {
      arguments = { 'filename' },
      returns = { 'soundData' }
    },
    {
      arguments = { 'samples', 'sampleRate', 'bitDepth', 'channels' },
      returns = { 'soundData' }
    },
    {
      arguments = { 'audioStream' },
      returns = { 'soundData' }
    },
    {
      arguments = { 'blob' },
      returns = { 'soundData' }
    }
  }
}
