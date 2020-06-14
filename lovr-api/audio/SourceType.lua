return {
  summary = 'Different ways to handle audio data for Source objects.',
  description = [[
    When you create a Source, you can either decode audio data gradually over time or you can decode
    it all at once.  Streaming it over time will use less memory but cause higher processing
    overhead because audio is continuously being decoded.  On the other hand, decoding a sound all
    at once means it will take more time to load and use more memory, but after it's loaded there is
    virtually no processing overhead.  It's recommended to use the 'static' mode for short sound
    effects and the 'stream' mode for longer music tracks.
  ]],
  values = {
    {
      name = 'static',
      description = 'Decode the entire sound file up front.'
    },
    {
      name = 'stream',
      description = 'Decode the sound gradually over time.'
    }
  }
}
