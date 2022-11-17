return {
  tag = 'devices',
  summary = 'Check if an audio device is started.',
  description = 'Returns whether an audio device is started.',
  arguments = {
    type = {
      type = 'AudioType',
      default = [['playback']],
      description = 'The type of device to check.'
    }
  },
  returns = {
    started = {
      type = 'boolean',
      description = 'Whether the device is active.'
    }
  },
  variants = {
    {
      arguments = { 'type' },
      returns = { 'started' }
    }
  },
  related = {
    'lovr.audio.start',
    'lovr.audio.stop'
  }
}
