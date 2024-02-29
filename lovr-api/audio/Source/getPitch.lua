return {
  tag = 'sourcePlayback',
  summary = 'Get the pitch of the Source.',
  description = 'Returns the pitch of the Source.',
  arguments = {},
  returns = {
    pitch = {
      type = 'number',
      description = 'The pitch.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'pitch' }
    }
  },
  notes = [[
    The default pitch is 1.  Every doubling/halving of the pitch will raise/lower the pitch by one
    octave.  Changing the pitch also changes the playback speed.
  ]]
}
