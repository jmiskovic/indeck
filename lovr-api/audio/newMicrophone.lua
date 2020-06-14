return {
  tag = 'microphones',
  summary = 'Create a new Microphone.',
  description = [[
    Creates a new Microphone based on the name of an existing micrphone and a set of capture
    parameters.  If the specified combination of prameters are not supported for audio capture,
    `nil` will be returned.
  ]],
  arguments = {
    {
      name = 'name',
      type = 'string',
      default = 'nil',
      description = [[
        The name of the microphone that this Microphone will record from, or `nil` to use the
        default microphone.
      ]]
    },
    {
      name = 'samples',
      type = 'number',
      default = '1024',
      description = [[
        The maximum number of samples that will be stored in the Microphone's internal buffer.
      ]]
    },
    {
      name = 'sampleRate',
      type = 'number',
      default = '8000',
      description = 'The number of audio samples to record each second.'
    },
    {
      name = 'bitDepth',
      type = 'number',
      default = '16',
      description = 'The number of bits occupied by each sample.  Usually 8 or 16.'
    },
    {
      name = 'channelCount',
      type = 'number',
      default = '1',
      description = 'The number of channels to record (1 for mono, 2 for stereo).'
    }
  },
  returns = {
    {
      name = 'microphone',
      type = 'Microphone',
      description = 'The new Microphone, or `nil` if the capture settings are not supported.'
    }
  },
  related = {
    'lovr.audio.getMicrophoneNames',
    'Microphone'
  }
}
