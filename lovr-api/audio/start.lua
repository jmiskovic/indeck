return {
  tag = 'devices',
  summary = 'Start an audio device.',
  description = [[
    Starts the active playback or capture device.  This may fail if:

    - The device is already started
    - No device was initialized with `lovr.audio.setDevice`
    - Lack of `audiocapture` permission on Android (see `lovr.system.requestPermission`)
    - Some other problem accessing the audio device
  ]],
  arguments = {
    {
      name = 'type',
      type = 'AudioType',
      default = [['playback']],
      description = 'The type of device to start.'
    }
  },
  returns = {
    {
      name = 'started',
      type = 'boolean',
      description = 'Whether the device was successfully started.'
    }
  },
  related = {
    'lovr.audio.getDevices',
    'lovr.audio.setDevice',
    'lovr.audio.stop',
    'lovr.audio.isStarted',
    'lovr.system.requestPermission',
    'lovr.permission'
  }
}
