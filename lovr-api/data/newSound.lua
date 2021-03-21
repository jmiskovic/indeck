return {
  summary = 'Create a new Sound.',
  description = [[
    Creates a new Sound, which holds audio data.  Audio can be stored as raw samples, compressed and
    decoded on the fly, or as a stream that can have audio written and read.
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
    sound = {
      type = 'Sound',
      description = 'The new Sound.'
    }
  },
  variants = {
    {
      arguments = { 'filename' },
      returns = { 'sound' }
    },
    {
      arguments = { 'samples', 'sampleRate', 'bitDepth', 'channels' },
      returns = { 'sound' }
    },
    {
      arguments = { 'audioStream' },
      returns = { 'sound' }
    },
    {
      arguments = { 'blob' },
      returns = { 'sound' }
    }
  }
}
