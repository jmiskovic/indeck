return {
  summary = 'An object that holds raw audio samples.',
  description = [[
    A SoundData stores raw audio samples that make up a sound file.  You can use `Source` objects
    to play SoundData.
  ]],
  constructors = {
    'lovr.data.newSoundData',
    'AudioStream:decode',
    'Microphone:getData'
  }
}
