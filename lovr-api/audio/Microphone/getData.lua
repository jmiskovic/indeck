return {
  summary = 'Get a new SoundData with recorded audio.',
  description = [[
    Returns a new SoundData with all of the buffered audio samples that the Microphone has recorded.
  ]],
  arguments = {
    soundData = {
      type = 'soundData',
      description = 'The `SoundData` to fill with audio (instead of creating a new one).'
    },
    sampleCount = {
      type = 'number',
      description = [[
        How many samples of audio to get right now, at most. If less is available, you will get
        less (use `Microphone:getSampleCount` to check the exact number).
      ]]
    },
    offset = {
      type = 'number',
      description = [[
        Index in samples into `soundData` at which to start to overwrite with new audio data from
        the microphone's internal buffer.'
      ]]
    }
  },
  returns = {
    soundData = {
      type = 'soundData',
      description = [[
        A `SoundData` with `sampleCount` of samples in it (or less if less was available; or all if
        sampleCount was not given). Nothing is returned if no data is available.
      ]]
    }
  },
  variants = {
    {
      description = 'Get all available audio as a newly created `SoundData`.',
      arguments = {},
      returns = { 'soundData' }
    },
    {
      description = [[
        Get at most `sampleCount` samples from the microphone's internal queue as a newly created
        `SoundData`.
      ]],
      arguments = { 'sampleCount' },
      returns = { 'soundData' }
    },
    {
      description = 'Get at all available audio and write it into `soundData`.',
      arguments = { 'soundData' },
      returns = { 'soundData' }
    },
    {
      description = [[
        Get at all available audio and write it into `soundData` starting at `offset` samples into
        `soundData`.
      ]],
      arguments = { 'soundData', 'offset' },
      returns = { 'soundData' }
    }
  },
  notes = [[
    There's a limit on the number of samples the Microphone is able to hold, which can be set at
    creation time in `lovr.audio.newMicrophone`.  While the Microphone is recording, be sure to call
    this function periodically to get a new chunk of audio in order to make room for more.

    You can use `Microphone:getSampleCount` to figure out how many samples the Microphone is
    currently holding.
  ]],
  related = {
    'Microphone:getSampleCount',
    'Microphone:startRecording',
    'Microphone:stopRecording',
    'Microphone:isRecording',
    'SoundData'
  }
}
