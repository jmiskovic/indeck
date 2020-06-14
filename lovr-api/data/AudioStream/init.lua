return {
  summary = 'An object that gradually decodes audio data.',
  description = [[
    An AudioStream is an object that reads and decodes compressed sound data.  All Source objects
    are powered by AudioStreams.

    Usually you can just use Sources without having to deal with AudioStreams, but sometimes you may
    need low-level access to the audio stream.
  ]],
  constructor = 'lovr.data.newAudioStream'
}
