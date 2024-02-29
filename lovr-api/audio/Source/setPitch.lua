return {
  tag = 'sourcePlayback',
  summary = 'Set the pitch of the Source.',
  description = 'Sets the pitch of the Source.',
  arguments = {
    pitch = {
      type = 'number',
      description = 'The new pitch.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'pitch' },
      returns = {}
    }
  },
  notes = [[
    The default pitch is 1.  Every doubling/halving of the pitch will raise/lower the pitch by one
    octave.  Changing the pitch also changes the playback speed.
  ]]
}
